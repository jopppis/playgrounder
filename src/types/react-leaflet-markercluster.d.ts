declare module 'react-leaflet-markercluster' {
  import L from 'leaflet';
    import 'leaflet.markercluster';
    import { FC, ReactNode } from 'react';

  interface MarkerClusterGroupProps {
    children?: ReactNode;
    showCoverageOnHover?: boolean;
    maxClusterRadius?: number;
    spiderfyOnMaxZoom?: boolean;
    disableClusteringAtZoom?: number;
    chunkedLoading?: boolean;
    removeOutsideVisibleBounds?: boolean;
    animate?: boolean;
    animateAddingMarkers?: boolean;
    spiderfyDistanceMultiplier?: number;
    spiderLegPolylineOptions?: L.PolylineOptions;
    polygonOptions?: L.PolylineOptions;
    zoomToBoundsOnClick?: boolean;
    singleMarkerMode?: boolean;
    iconCreateFunction?: (cluster: L.MarkerCluster) => L.DivIcon;
    maxClusterSize?: number;
    className?: string;
    marker?: L.Marker;
    attribution?: string;
    id?: string;
    eventHandlers?: Record<string, (event: L.LeafletEvent) => void>;
    pathOptions?: L.PathOptions;
    position?: L.LatLngExpression;
  }

  const MarkerClusterGroup: FC<MarkerClusterGroupProps>;

  export default MarkerClusterGroup;
}
