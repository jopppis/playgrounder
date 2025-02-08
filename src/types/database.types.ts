export interface Playground {
  id: string
  name: string
  location: string // PostGIS geometry is returned as WKT (Well-Known Text)
  description: string | null
  created_at: string
  address: string | null
}

export interface PlaygroundWithCoordinates extends Omit<Playground, 'location'> {
  latitude: number
  longitude: number
}

export interface Visit {
  id: string
  playground_id: string
  user_id: string
  visited_at: string
  notes: string | null
  rating: number | null
}

export interface Database {
  public: {
    Tables: {
      playgrounds: {
        Row: Playground
        Insert: Omit<Playground, 'id' | 'created_at'>
        Update: Partial<Omit<Playground, 'id' | 'created_at'>>
      }
      visits: {
        Row: Visit
        Insert: Omit<Visit, 'id'>
        Update: Partial<Omit<Visit, 'id'>>
      }
    }
    Functions: {
      playgrounds_nearby: {
        Args: {
          lat: number
          lng: number
          radius_meters?: number
        }
        Returns: Playground[]
      }
    }
  }
}
