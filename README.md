# Yandex Cloud Terraform Example

### Конфигурация

При первом запуске нужно установить и настроить yc cli.
После установки добавить данные аккаунта:

```bash
yc config set cloud-id <cloud_id>
yc config set folder-id <folder_id>
yc config set service-account-key /path/to/authorized_key.json
```

Затем добавить их в переменные окружения для работы терраформа:

```bash
export YC_TOKEN=$(yc iam create-token)
export SA_KEY_FILE=$(yc config get service-account-key)
export YC_CLOUD_ID=$(yc config get cloud-id)
export YC_FOLDER_ID=$(yc config get folder-id)
```

### Пример структуры

```bash
.
├── live # окружения (prod/pred/dev и тп)
│   ├── dev
│   └── prod
│       ├── data_stores # виртуалки баз данных
│       ├── k8s # кубер - программная часть
│       ├── mks # Managed Service for Kubernetes - k8s-кластер - аппаратная часть
│       │   ├── cluster.tf
│       │   ├── data.tf
│       │   ├── main.tf
│       │   ├── outputs.tf
│       │   ├── terraform.tfvars
│       │   ├── variables.tf
│       │   └── versions.tf
│       └── vpc # сеть, в которой находятся виртуалки баз данных и k8s-кластер
├── modules # собственные модули
├── storage.key # ключи для доступа к удаленному хранилищу стейта
└── authorized_key.json # ключи сервисного аккаунта для выполнения действий от его лица
```

### Генерация документации

```bash
terraform-docs markdown table path/to/module
```
