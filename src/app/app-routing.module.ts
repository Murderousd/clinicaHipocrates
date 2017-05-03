import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AdministracionComponent } from './administracion/administracion.component';
import { InicioComponent } from './inicio/inicio.component';
import { ReservaHoraComponent } from './reserva-hora/reserva-hora.component';

const routes: Routes = [
  { path: '', redirectTo: '/inicio', pathMatch: 'full' }, // Temporary
  { path: 'administracion', component: AdministracionComponent },
  { path: 'inicio', component: InicioComponent },
  { path: 'reservaHora', component: ReservaHoraComponent },


//{ path: 'administracion', children: [] }
];


@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
