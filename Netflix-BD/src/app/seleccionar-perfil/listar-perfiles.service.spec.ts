import { TestBed } from '@angular/core/testing';

import { ListarPerfilesService } from './listar-perfiles.service';

describe('ListarPerfilesService', () => {
  let service: ListarPerfilesService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(ListarPerfilesService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
