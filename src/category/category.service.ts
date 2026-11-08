import { GenerationWarningService } from '../generation-warning/generation-warning.service';
import { SavedResponseChannel }     from '../saved-response/saved-response-channel';
import { SavedResponseService }     from '../saved-response/saved-response.service';
import { CategoryRaw }              from './category.raw';

export class CategoryService {

  protected static readonly UNCATEGORIZED_ID   = -1;
  protected static readonly UNCATEGORIZED_NAME = 'Uncategorized';

  protected readonly idToNameMap = new Map<number, string>();
  protected readonly savedResponseService: SavedResponseService;

  constructor(savedResponseService: SavedResponseService) {

    this.savedResponseService = savedResponseService;
    this.idToNameMap.set(CategoryService.UNCATEGORIZED_ID, CategoryService.UNCATEGORIZED_NAME);
  }

  public getDocumentId(categoryId: number, commandName: string): number {

    if (this.getName(categoryId)) return categoryId;

    GenerationWarningService.add(
      `"${commandName}" is in a category this script does not recognize (number ${categoryId}), so it was added to "${CategoryService.UNCATEGORIZED_NAME}". The other definitions were created normally.`,
    );

    return CategoryService.UNCATEGORIZED_ID;
  }

  public getName(id: number): string {

    const name = this.idToNameMap.get(id);

    return name === undefined
      ? ''
      : name;
  }

  public loadCategories(): void {

    const startTime = new Date();

    console.log('Loading category map');

    this.handleSuccess(this.extractCategories(this.savedResponseService.getData(SavedResponseChannel.Category)), startTime);
  }

  protected extractCategories(data: any): CategoryRaw {

    const categoryRaw = data?.C?.C;

    if (!this.isCategoryRaw(categoryRaw)) {
      throw this.savedResponseService.unexpectedDataMessage(SavedResponseChannel.Category);
    }

    return categoryRaw;
  }

  protected isCategoryRaw(candidate: any): candidate is CategoryRaw {

    if (typeof candidate !== 'object' || candidate === null || Array.isArray(candidate)) return false;

    const nameList: unknown[] = Object.values(candidate);

    return nameList.length > 0 && nameList.every((name: unknown) => typeof name === 'string');
  }

  protected handleSuccess(categoryRaw: CategoryRaw, startTime: Date): void {

    const endTime: Date    = new Date();
    const duration: number = endTime.getTime() - startTime.getTime();

    console.log(`Category map loaded. (${duration.toLocaleString()} ms)`);

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
