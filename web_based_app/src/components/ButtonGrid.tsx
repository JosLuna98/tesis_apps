import React from 'react'
import { IonButton, IonCol, IonRow } from '@ionic/react'
import './ButtonGrid.css'

const ButtonGrid: React.FC = () => {
  return (
    <div className="container">
      <IonRow>
        <IonCol>
          <strong>Taxonomy App</strong>
        </IonCol>
      </IonRow><br /><br />
      <IonRow className="ion-align-items-center">
        <IonCol>
          <IonButton
            color="tertiary"
            routerLink="/camera">Cámara</IonButton>
        </IonCol>
      </IonRow>
      <IonRow className="ion-align-items-center">
        <IonCol>
          <IonButton
            color="tertiary"
            routerLink="/maps">GPS</IonButton>
        </IonCol>
      </IonRow>
      <IonRow className="ion-align-items-center">
        <IonCol>
          <IonButton
            color="tertiary"
            routerLink="/explorer">Archivos</IonButton>
        </IonCol>
      </IonRow>
    </div>
  )
}

export default ButtonGrid
