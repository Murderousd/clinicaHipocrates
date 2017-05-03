import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { AdministracionComponent } from './administracion/administracion.component';
import { InicioComponent } from './inicio/inicio.component';
import { ReservaHoraComponent } from './reserva-hora/reserva-hora.component';

@NgModule({
  declarations: [
    AppComponent,
    AdministracionComponent,
    InicioComponent,
    ReservaHoraComponent,
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
