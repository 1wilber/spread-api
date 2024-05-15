# Ver una alerta de spread

**URL** : `/api/v1/spread_alerts/:market_id`

**Método** : `GET`

## Solicitud

**URL**: `/api/v1/spread_alerts/BTC-COP`


## Respuesta exitosa

**Code** : `200 OK`

**Ejemplo:**

```json
[
  {
    "market_id": "BTC-COP",
    "spread": "6216297.6",
    "created_at": "2024-05-15T01:42:18.400Z",
    "updated_at": "2024-05-15T01:42:18.400Z"
  }
]
```
