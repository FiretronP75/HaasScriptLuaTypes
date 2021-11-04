import axios, { AxiosResponse }     from 'axios';
import { DocumentService }          from '../document/document.service';
import { categoryProductionSample } from './category-production.sample';
import { categoryStagingSample }    from './category-staging.sample';
import { CategoryWrapperRaw }       from './category-wrapper.raw';
import { CategoryRaw }              from './category.raw';

export class CategoryService {

  protected static readonly PRODUCTION_API_URL = 'https://api.haasbot.com/InterfaceAPI.php?channel=INIT_DATA';
  protected static readonly STAGING_API_URL    = 'https://api.haasstage.com/InterfaceAPI.php?channel=INIT_DATA';

  protected readonly documentService: DocumentService;
  protected readonly idToNameMap = new Map<number, string>();
  protected readonly isProduction: boolean;

  constructor(documentService: DocumentService, isProduction: boolean) {

    this.documentService = documentService;
    this.isProduction    = isProduction;
  }

  public getName(id: number): string {

    const name = this.idToNameMap.get(id);

    return name === undefined
      ? ''
      : name;
  }

  public async loadCategories(): Promise<void> {

    const startTime = new Date();

    const url: string = this.isProduction
      ? CategoryService.PRODUCTION_API_URL
      : CategoryService.STAGING_API_URL;

    console.log('Loading category map from', url);

    try {
      const response: AxiosResponse<CategoryWrapperRaw> = await axios.post<CategoryWrapperRaw>(url);

      if (response.data.Success) {
        this.handleSuccess(response.data, startTime);
      } else {
        this.handleFailure(response.data.Error, startTime);
      }

    } catch (error) {

      this.handleFailure(error, startTime);
    }
  }

  protected handleFailure(error: any, startTime): void {
    console.error('Category API Error:', error);
    console.warn('Using previously saved category data.');

    const categorySample = this.isProduction
      ? categoryProductionSample
      : categoryStagingSample;

    this.handleSuccess(
      {
        Data   : {C: {C: categorySample}},
        Error  : '',
        Success: true,
      },
      startTime,
    );
  }

  protected handleSuccess(data: CategoryWrapperRaw, startTime: Date): void {

    const endTime: Date    = new Date();
    const duration: number = endTime.getTime() - startTime.getTime();

    console.log(`Category map loaded. (${duration.toLocaleString()} ms)`);

    this.documentService.setCategorySample(data.Data.C.C, this.isProduction);
    this.setCategories(data.Data.C.C);
  }

  protected setCategories(categoryRaw: CategoryRaw): void {

    for (const key in categoryRaw) {

      if (!categoryRaw.hasOwnProperty(key)) continue;

      const id: number   = +key;
      const name: string = categoryRaw[key] as string;

      this.idToNameMap.set(id, name);
    }
  }

}
