import React from 'react'
import PageContainer from '../components/PageContainer'
import GoogleMapReact from 'google-map-react'

const defaultProps = {
  key: 'YOUR_KEY_HERE',
  center: {
    lat: 0.9665,
    lng: -79.6545
  },
  zoom: 15
};

const Maps: React.FC = () => {
  return (
    <PageContainer>
      <div style={{ height: '100vh', width: '100%' }}>
        <GoogleMapReact
          bootstrapURLKeys={{ key: defaultProps.key }}
          defaultCenter={defaultProps.center}
          defaultZoom={defaultProps.zoom}
        />
      </div>
    </PageContainer>
  )
}

export default Maps
