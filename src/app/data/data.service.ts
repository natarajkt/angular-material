import {Injectable} from '@angular/core';
import {Post} from '../Post';
import {Observable, of} from 'rxjs';
import { Product } from '../Product';

@Injectable()
export class DataService {

  ELEMENT_DATA: Post[] = [
    {position: 0, title: 'Post One', category: 'Web Development', date_posted: new Date(), body: 'Body 1'},
    {position: 1, title: 'Post Two', category: 'Android Development', date_posted: new Date(), body: 'Body 2'},
    {position: 2, title: 'Post Three', category: 'IOS Development', date_posted: new Date(), body: 'Body 3'},
    {position: 3, title: 'Post Four', category: 'Android Development', date_posted: new Date(), body: 'Body 4'},
    {position: 4, title: 'Post Five', category: 'IOS Development', date_posted: new Date(), body: 'Body 5'},
    {position: 5, title: 'Post Six', category: 'Web Development', date_posted: new Date(), body: 'Body 6'},
  ];

  PRODUCT_DATA: Product[] = [
    {position: 0, title: 'Lego Blocks', description: 'Lego classic Blocks', product_category: 'Toys', Seller: 'Toys R US',
    date_purchased: new Date(), Quantity: 5},
    {position: 1, title: 'Flash Furniture Green Plastic chair', description: 'Stackable School Chair with 10.5 Seat Height',
     product_category: 'Furniture', Seller: 'Amazon', date_purchased: new Date(), Quantity: 2},
  ];

  categories = [
    {value: 'Web-Development', viewValue: 'Web Development'},
    {value: 'Android-Development', viewValue: 'Android Development'},
    {value: 'IOS-Development', viewValue: 'IOS Development'}
  ];

  product_categories = [
    {value: 'Furniture', viewValue: 'Furniture'},
    {value: 'Clothing', viewValue: 'Clothing'},
    {value: 'Toys', viewValue: 'Toys'},
    {value: 'Books', viewValue: 'Books'}
  ];

  constructor() {
  }

  getData(): Observable<Post[]> {
    return of<Post[]>(this.ELEMENT_DATA);
  }

  getProductData(): Observable<Product[]> {
    return of<Product[]>(this.PRODUCT_DATA);
  }

  getCategories() {
    return this.categories;
  }

  getProductCategories() {
    return this.product_categories;
  }

  addPost(data) {
    this.ELEMENT_DATA.push(data);
  }

  deletePost(index) {
    this.ELEMENT_DATA = [...this.ELEMENT_DATA.slice(0, index), ...this.ELEMENT_DATA.slice(index + 1)];
  }

  dataLength() {
    return this.ELEMENT_DATA.length;
  }

  addProductPost(data) {
    this.PRODUCT_DATA.push(data);
  }

  deleteProductPost(index) {
    this.PRODUCT_DATA = [...this.PRODUCT_DATA.slice(0, index), ...this.PRODUCT_DATA.slice(index + 1)];
  }

  productDataLength() {
    return this.PRODUCT_DATA.length;
  }
}
