import { CategoryRaw } from './category.raw';

export interface CategoryWrapperRaw {

  Data: {
    C: {
      C: CategoryRaw;
    }
  };
  Error: string;
  Success: boolean;

}
