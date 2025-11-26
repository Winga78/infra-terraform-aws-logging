# infra-terraform-aws-logging

## Description  
Ce projet utilise Terraform pour déployer une infrastructure de **logging & audit** sur AWS, en s’appuyant notamment sur CloudTrail et CloudWatch (logs + monitoring / audit).  
L’objectif est de centraliser les logs d’API, les événements d’AWS, afin de sécuriser, monitorer et historiser les activités de l’environnement AWS.

## Composants déployés  
- CloudTrail : journalisation des appels API et des événements globaux AWS (optionnellement multi-région ou inter-comptes) :contentReference[oaicite:5]{index=5}  
- CloudWatch Log Groups / Log Streams : pour réceptionner les logs / alertes / métriques si besoin :contentReference[oaicite:6]{index=6}  
- (Optionnel) S3 Bucket + chiffrement & versioning pour stockage durable des logs CloudTrail (si tu as configuré cette partie) :contentReference[oaicite:7]{index=7}  

## Structure du repo  
/ ── main.tf # configuration globale
── variables.tf # variables Terraform
── outputs.tf # outputs (ARNs, noms, etc.)
── modules/ # éventuels modules réutilisables ou découplés



## Pré-requis  
- Terraform (version compatible avec le provider AWS utilisé)  
- Compte AWS avec droits suffisants pour créer CloudTrail, CloudWatch, S3, IAM selon la configuration  
- Variables AWS configurées (via `aws credentials`, `environment variables`, ou `provider` Terraform)  

## Déploiement / Utilisation  

```bash
terraform init
terraform plan
terraform apply

