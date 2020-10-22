import { IonPage, IonHeader, IonToolbar, IonTitle, IonContent } from '@ionic/react'
import React from 'react'

const PageContainer: React.FC = ({ children }) => {
  return (
    <IonPage>
      <IonHeader>
        <IonToolbar color="tertiary">
          <IonTitle>web-based app</IonTitle>
        </IonToolbar>
      </IonHeader>
      <IonContent>
        { children }
      </IonContent>
    </IonPage>
  )
}

export default PageContainer