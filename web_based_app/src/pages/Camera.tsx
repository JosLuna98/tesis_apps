import React from 'react'
import Webcam from "react-webcam";
import PageContainer from '../components/PageContainer'

const Camera: React.FC = () => {
  return (
    <PageContainer>
      <Webcam />
    </PageContainer>
  )
}

export default Camera
