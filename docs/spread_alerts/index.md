# Listar todas las alertas de spread

**URL** : `/api/v1/spread_alerts`

**Método** : `GET`

## Respuesta exitosa

**Code** : `200 OK`

**Ejemplo:**

```json
[
  {
    "market_id": "BTC-CLP",
    "spread": "304886.0",
    "created_at": "2024-05-15T01:42:18.400Z",
    "updated_at": "2024-05-15T01:42:18.400Z"
  },
  {
    "market_id": "BTC-COP",
    "spread": "6216297.6",
    "created_at": "2024-05-15T01:42:18.400Z",
    "updated_at": "2024-05-15T01:42:18.400Z"
  }
]
```
