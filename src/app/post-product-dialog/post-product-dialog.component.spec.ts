import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PostProductDialogComponent } from './post-product-dialog.component';

describe('PostProductDialogComponent', () => {
  let component: PostProductDialogComponent;
  let fixture: ComponentFixture<PostProductDialogComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PostProductDialogComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PostProductDialogComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
