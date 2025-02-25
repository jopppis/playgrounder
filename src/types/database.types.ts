export interface Playground {
  id: string
  name: string
  location: string // PostGIS geometry is returned as WKT (Well-Known Text)
  description: string | null
  created_at: string
  address: string | null
  has_supervised_activities: boolean
  city: string | null
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
}

export interface Rating {
  id: string
  playground_id: string
  user_id: string
  rating: number
  is_public: boolean
  created_at: string
  updated_at: string
}

export interface PlaygroundRatings {
  avg_rating: number
  total_ratings: number
  user_rating: number | null
}

export interface PublicRating {
  rating: number
  created_at: string
  updated_at: string
}

export interface UserFilter {
  id: string
  user_id: string
  visit_status: 'visited' | 'unvisited' | null
  min_stars: number | null
  min_user_stars: number | null
  has_supervised_activities: boolean | null
  city: string | null
  no_rating: boolean | null
  no_user_rating: boolean | null
  created_at: string
  updated_at: string
}

export interface UserPreferences {
  id: string
  user_id: string
  default_public_ratings: boolean
  created_at: string
  updated_at: string
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
      ratings: {
        Row: Rating
        Insert: Omit<Rating, 'id' | 'created_at' | 'updated_at'>
        Update: Partial<Omit<Rating, 'id' | 'created_at' | 'updated_at'>>
      }
      user_filters: {
        Row: UserFilter
        Insert: Omit<UserFilter, 'id' | 'created_at' | 'updated_at'>
        Update: Partial<Omit<UserFilter, 'id' | 'created_at' | 'updated_at'>>
      }
      user_preferences: {
        Row: UserPreferences
        Insert: Omit<UserPreferences, 'id' | 'created_at' | 'updated_at'>
        Update: Partial<Omit<UserPreferences, 'id' | 'created_at' | 'updated_at'>>
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
      get_closest_playground_city: {
        Args: {
          lat: number
          lng: number
        }
        Returns: string | null
      }
    }
  }
}
