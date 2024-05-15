# Actualizar una alerta de spread

**URL** : `/api/v1/spread_alerts/:market_id`

**Método** : `PUT`

## Solicitud


**URL**: `/api/v1/spread_alerts/BTC-CLP`

**Ejemplo:**

```json
{
  "spread_alert": {
    "spread": 304886.0
  }
}
```

|Parametro|Tipo|Descripcion |
| --      | -- |     --     |
|spread     | `float`  | Monto en decimal del spread del mercado

## Respuesta exitosa

**Code** : `200 OK`

**Ejemplo:**

```json
{
  "market_id": "BTC-CLP",
  "spread": "304886.0",
  "created_at": "2024-05-15T01:42:18.400Z",
  "updated_at": "2024-05-15T01:42:18.400Z"
}
```

