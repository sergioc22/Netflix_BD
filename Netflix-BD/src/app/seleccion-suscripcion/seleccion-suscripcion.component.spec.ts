import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SeleccionSuscripcionComponent } from './seleccion-suscripcion.component';

describe('SeleccionSuscripcionComponent', () => {
  let component: SeleccionSuscripcionComponent;
  let fixture: ComponentFixture<SeleccionSuscripcionComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SeleccionSuscripcionComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(SeleccionSuscripcionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
