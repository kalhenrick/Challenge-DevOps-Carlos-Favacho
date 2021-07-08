# Terraform Test AWS

## Passo para execução 

- Configurar o ambiente usando o "aws configure" com as credenciais de acesso (KEY e SECRET) ao ambiente, com permissão para permissão para criar os recursos;
- Executar:
```sh
terraform plan
terraform apply
```
- Será gerado um output com o ip publico da ec2 com wordpress instalado acessado via ngnix
- Caso deseje acessar a ec2, conectar através do Session Manager, as roles ja estao configuradas.;

## Recuros Criados
- **VPC**
- **SUBNET**
- **ACL**
- **SECURITY GROUP**
- **INTERNET GATEWAY**
- **EC2**
- **IAM ROLE**
- **ELASTIC IP**
- **NETWORK INTERFACE**
- **ROUTE TABLE**
- **RDS**
