# SquareConnect::ApplicationReceivable

### Description

Represents a monetary distribution of part of a [Transaction](#type-transaction)'s amount for Transactions which included additional recipients. The location of this receivable is that same as the one specified in the [AdditionalRecipient](#type-additionalrecipient).

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The application receivable&#39;s unique ID, issued by Square payments servers. | 
**transaction_id** | **String** | The ID of the transaction that the application receivable was applied to. | 
**transaction_location_id** | **String** | The ID of the location that created the receivable. This is the location ID on the associated transaction. | 
**amount_money** | [**Money**](Money.md) | The amount of the receivable. This will always be non-negative. | 
**created_at** | **String** | The time when the application receivable was created, in RFC 3339 format. | [optional] 
**refunds** | [**Array&lt;ApplicationReceivableRefund&gt;**](ApplicationReceivableRefund.md) | Any refunds of the receivable that have been applied. | [optional] 

