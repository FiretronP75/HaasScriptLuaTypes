import { SavedResponseService } from '../saved-response/saved-response.service';
import { CategoryRaw }          from './category.raw';

export class CategoryService {

  protected readonly idToNameMap = new Map<number, string>();
  protected readonly savedResponsePath: string;

  constructor(savedResponsePath: string) {

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

    this.handleSuccess(this.extractCategories(SavedResponseService.read(this.savedResponsePath)), startTime);
  }

  protected extractCategories(saved: any): CategoryRaw {

    if (saved?.Success === false) {
      throw SavedResponseService.failedResponseMessage(this.savedResponsePath);
    }

    let categoryRaw = saved?.Data ?? saved;

    while (categoryRaw?.C) categoryRaw = categoryRaw.C;

    if (!this.isCategoryRaw(categoryRaw)) {
      throw `The file "${this.savedResponsePath}" is not the INIT_DATA response. Check that you saved the right response in the right file, then try again.`;
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
