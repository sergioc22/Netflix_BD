import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ElegirGeneroComponent } from './elegir-genero.component';

describe('ElegirGeneroComponent', () => {
  let component: ElegirGeneroComponent;
  let fixture: ComponentFixture<ElegirGeneroComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ElegirGeneroComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ElegirGeneroComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
