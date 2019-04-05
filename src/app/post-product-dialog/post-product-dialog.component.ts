import {Component, EventEmitter, Inject} from '@angular/core';
import {MAT_DIALOG_DATA, MatDialogRef} from '@angular/material';
import {DataService} from '../data/data.service';

@Component({
  selector: 'app-post-product-dialog',
  templateUrl: './post-product-dialog.component.html',
  styleUrls: ['./post-product-dialog.component.css']
})
export class PostProductDialogComponent {
  productPost = {
    title: '',
    description: '',
    product_category: '',
    position: 0,
    Seller: '',
    Quantity: 0,
    date_purchased: new Date()
  };

  categories = this.dataService.getProductCategories();

  public event: EventEmitter<any> = new EventEmitter();

  constructor(
    public dialogRef: MatDialogRef<PostProductDialogComponent>,
    @Inject(MAT_DIALOG_DATA) public data: any,
    public dataService: DataService
  ) {
  }

  onNoClick(): void {
    this.dialogRef.close();
  }

  onSubmit(): void {
    this.productPost.position = this.dataService.dataLength();
    this.event.emit({data: this.productPost});
    this.dialogRef.close();
  }

}
