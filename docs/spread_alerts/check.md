# Chequear estado de una alerta de spread

**URL** : `/api/v1/spread_alerts/:market_id/check`

**Método** : `GET`

## Solicitud

**URL**: `/api/v1/spread_alerts/BTC-CLP/check`


## Respuesta exitosa

**Code** : `200 OK`

**Ejemplo:**

```json
{
  "market_id": "BTC-CLP",
  "alert_spread": 304886.0,
  "current_spread": 225490.0,
  "message": "lower"
}
```

|Parametro|Tipo|Descripcion |
| --      | -- |     --     |
| market_id | `string` | Par de monedas disponibles en la [Api publica de Buda](https://api.buda.com/#rest-api-llamadas-publicas-mercados)
|alert_spread     | `float`  | Corresponde al spread que se le creo la alerta
|current_spread     | `float`  | Corresponde al spread actual del mercado
|message     | `string`  | EL mensaje indica si el `current_spread` es `greater`, `lower` o `equal` que el `alert_spread`
