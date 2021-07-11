import { TestBed } from '@angular/core/testing';

import { RegistrarPerfilSService } from './registrar-perfil-s.service';

describe('RegistrarPerfilSService', () => {
  let service: RegistrarPerfilSService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(RegistrarPerfilSService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
