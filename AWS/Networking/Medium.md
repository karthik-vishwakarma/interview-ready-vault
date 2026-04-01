# AWS Networking: Medium Level

### Q1: What is the difference between a Security Group and a Network ACL (NACL)?

**Answer:**
| Feature | Security Group | Network ACL (NACL) |
| :--- | :--- | :--- |
| **Level** | Operates at the **Instance** level. | Operates at the **Subnet** level. |
| **State** | **Stateful**: Return traffic is automatically allowed. | **Stateless**: Return traffic must be explicitly
allowed. |
| **Rules** | Supports **Allow** rules only. | Supports **Allow and Deny** rules. |
| **Order** | All rules are evaluated before permitting traffic. | Rules are evaluated in **numerical order**. |

### Q2: When would you use a VPC Endpoint (Interface vs. Gateway)?

**Answer:** VPC Endpoints allow you to privately connect your VPC to supported AWS services without requiring an
Internet Gateway or NAT Gateway.

* **Gateway Endpoints:** Used only for **S3** and **DynamoDB**. They are free and configured via Route Tables.
* **Interface Endpoints (PrivateLink):** Used for most other services (SQS, SNS, Kinesis, etc.). They use an Elastic
  Network Interface (ENI) with a private IP and incur a cost.

### Q3: Explain the difference between a NAT Gateway and an Internet Gateway.

**Answer:** * **Internet Gateway (IGW):** Allows resources in **public subnets** to connect to the internet and allows
the internet to initiate connections to those resources.

* **NAT Gateway:** Allows resources in **private subnets** to reach the internet (e.g., for software updates) but *
  *prevents** the internet from initiating a connection back to those private instances.

**Architecture Snippet (Terraform-style logic):**

```hcl
# Example of a Private Subnet Routing to a NAT Gateway
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.example.id
  }
}
```

### Q4: How do you connect two different VPCs in AWS?

**Answer:**

There are three primary ways to connect VPCs, depending on the scale and specific use case:

* **VPC Peering:** A networking connection between two VPCs that enables you to route traffic between them using private
  IPv4 or IPv6 addresses.
    * *Constraint:* It is a simple point-to-point connection and **does not support transitive routing** (e.g., If VPC A
      is peered with B, and B is peered with C, A cannot communicate with C through B).
* **Transit Gateway:** Acts as a network transit hub, to connect your VPCs and on-premises networks.
    * *Benefit:* It uses a hub-and-spoke model which simplifies management as the number of VPCs grows. Unlike peering,
      it **supports transitive routing**.
* **AWS PrivateLink:** Provides private connectivity between VPCs, AWS services, and your on-premises networks, without
  exposing your traffic to the public internet.
    * *Benefit:* Best used when you only want to expose a **specific service** (like an application behind an NLB) from
      one VPC to another, rather than connecting the entire networks.

---
[⬅️ Back to Networking Index](./README.md) | [Home 🏠](../../README.md)