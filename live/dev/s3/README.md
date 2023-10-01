## S3 module

При самом первом `apply` нужно закомментировать блок `backend` в файле [main.tf](main.tf), потому что сам бакет хранения стейта еще не создан.

После этого раскомментировать и выполнить:

```bash
terraform init # согласиться на миграцию стейта в только что созданный бакет (yes)
```

> **_NOTE:_** Нужно только при создании бакета, использующегося для хранения всех стейтов. При добавлении/изменении других бакетов - не требуется!

## Requirements

| Name                                                                     | Version  |
| ------------------------------------------------------------------------ | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.3.7 |
| <a name="requirement_yandex"></a> [yandex](#requirement_yandex)          | > 0.8    |

## Providers

No providers.

## Modules

| Name                                                                 | Source                    | Version |
| -------------------------------------------------------------------- | ------------------------- | ------- |
| <a name="module_state_store"></a> [state_store](#module_state_store) | ../../../modules/s3_state | n/a     |

## Resources

No resources.

## Inputs

| Name                                                                  | Description                  | Type     | Default           | Required |
| --------------------------------------------------------------------- | ---------------------------- | -------- | ----------------- | :------: |
| <a name="input_default_zone"></a> [default_zone](#input_default_zone) | Default cloud zone           | `string` | `"ru-central1-a"` |    no    |
| <a name="input_env"></a> [env](#input_env)                            | Environment value for labels | `string` | `"dev"`           |    no    |

## Outputs

No outputs.
