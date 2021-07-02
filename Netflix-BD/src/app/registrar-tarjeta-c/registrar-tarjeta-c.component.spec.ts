import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RegistrarTarjetaCComponent } from './registrar-tarjeta-c.component';

describe('RegistrarTarjetaCComponent', () => {
  let component: RegistrarTarjetaCComponent;
  let fixture: ComponentFixture<RegistrarTarjetaCComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ RegistrarTarjetaCComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(RegistrarTarjetaCComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
