import { DocumentService }          from '../document/document.service';
import { SavedResponseService }     from '../saved-response/saved-response.service';
import { CategoryRaw }              from './category.raw';
import { categoryProductionSample } from './sample/category-production.sample';
import { categoryStagingSample }    from './sample/category-staging.sample';

export class CategoryService {

  protected readonly documentService: DocumentService;
  protected readonly idToNameMap = new Map<number, string>();
  protected readonly isProduction: boolean;
  protected readonly savedResponsePath: string;

  constructor(documentService: DocumentService, isProduction: boolean, savedResponsePath: string) {

    this.documentService   = documentService;
    this.isProduction      = isProduction;
    this.savedResponsePath = savedResponsePath;
  }

  public getName(id: number): string {

    const name = this.idToNameMap.get(id);

    return name === undefined
      ? ''
      : name;
  }

  public loadCategories(): void {

    const startTime = new Date();

    console.log('Loading category map from', this.savedResponsePath);

    try {
      const saved = SavedResponseService.read<any>(this.savedResponsePath);

      if (saved.Success === false) {
        this.handleFailure(saved.Error, startTime);
      } else {
        this.handleSuccess(this.extractCategories(saved), startTime);
      }

    } catch (error) {

      this.handleFailure(error, startTime);
    }
  }

  /** Accepts the whole INIT_DATA response, its `C` object, or the bare map of category numbers to names. */
  protected extractCategories(saved: any): CategoryRaw {

    let categories = saved.Data ?? saved;

    while (categories.C) categories = categories.C;

    return categories;
  }

  protected handleFailure(error: any, startTime): void {
    console.error('Saved category response error:', error);
    console.warn('Using previously saved category data.');

    const categorySample = this.isProduction
      ? categoryProductionSample
      : categoryStagingSample;

    this.handleSuccess(categorySample, startTime);
  }

  protected handleSuccess(categoryRaw: CategoryRaw, startTime: Date): void {

    const endTime: Date    = new Date();
    const duration: number = endTime.getTime() - startTime.getTime();

    console.log(`Category map loaded. (${duration.toLocaleString()} ms)`);

    this.documentService.setCategorySample(categoryRaw, this.isProduction);
    this.setCategories(categoryRaw);
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
