#==============================================================================#
# LexModelBuildingService.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/lex-models-2017-04-19.normal.json
#==============================================================================#

__precompile__()

module LexModelBuildingService

using AWSCore


"""
    using AWSSDK.LexModelBuildingService.create_bot_version
    create_bot_version([::AWSConfig], arguments::Dict)
    create_bot_version([::AWSConfig]; name=, <keyword arguments>)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "POST", "/bots/{name}/versions", arguments::Dict)
    lex_models([::AWSConfig], "POST", "/bots/{name}/versions", name=, <keyword arguments>)

# CreateBotVersion Operation

Creates a new version of the bot based on the `\$LATEST` version. If the `\$LATEST` version of this resource hasn't changed since you created the last version, Amazon Lex doesn't create a new version. It returns the last created version.

**Note**
> You can update only the `\$LATEST` version of the bot. You can't update the numbered versions that you create with the `CreateBotVersion` operation.

When you create the first version of a bot, Amazon Lex sets the version to 1. Subsequent versions increment by 1. For more information, see [versioning-intro](@ref).

This operation requires permission for the `lex:CreateBotVersion` action.

# Arguments

## `name = ::String` -- *Required*
The name of the bot that you want to create a new version of. The name is case sensitive.


## `checksum = ::String`
Identifies a specific revision of the `\$LATEST` version of the bot. If you specify a checksum and the `\$LATEST` version of the bot has a different checksum, a `PreconditionFailedException` exception is returned and Amazon Lex doesn't publish a new version. If you don't specify a checksum, Amazon Lex publishes the `\$LATEST` version.




# Returns

`CreateBotVersionResponse`

# Exceptions

`NotFoundException`, `ConflictException`, `LimitExceededException`, `InternalFailureException`, `BadRequestException` or `PreconditionFailedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/CreateBotVersion)
"""

@inline create_bot_version(aws::AWSConfig=default_aws_config(); args...) = create_bot_version(aws, args)

@inline create_bot_version(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "POST", "/bots/{name}/versions", args)

@inline create_bot_version(args) = create_bot_version(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.create_intent_version
    create_intent_version([::AWSConfig], arguments::Dict)
    create_intent_version([::AWSConfig]; name=, <keyword arguments>)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "POST", "/intents/{name}/versions", arguments::Dict)
    lex_models([::AWSConfig], "POST", "/intents/{name}/versions", name=, <keyword arguments>)

# CreateIntentVersion Operation

Creates a new version of an intent based on the `\$LATEST` version of the intent. If the `\$LATEST` version of this intent hasn't changed since you last updated it, Amazon Lex doesn't create a new version. It returns the last version you created.

**Note**
> You can update only the `\$LATEST` version of the intent. You can't update the numbered versions that you create with the `CreateIntentVersion` operation.

When you create a version of an intent, Amazon Lex sets the version to 1. Subsequent versions increment by 1. For more information, see [versioning-intro](@ref).

This operation requires permissions to perform the `lex:CreateIntentVersion` action.

# Arguments

## `name = ::String` -- *Required*
The name of the intent that you want to create a new version of. The name is case sensitive.


## `checksum = ::String`
Checksum of the `\$LATEST` version of the intent that should be used to create the new version. If you specify a checksum and the `\$LATEST` version of the intent has a different checksum, Amazon Lex returns a `PreconditionFailedException` exception and doesn't publish a new version. If you don't specify a checksum, Amazon Lex publishes the `\$LATEST` version.




# Returns

`CreateIntentVersionResponse`

# Exceptions

`NotFoundException`, `ConflictException`, `LimitExceededException`, `InternalFailureException`, `BadRequestException` or `PreconditionFailedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/CreateIntentVersion)
"""

@inline create_intent_version(aws::AWSConfig=default_aws_config(); args...) = create_intent_version(aws, args)

@inline create_intent_version(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "POST", "/intents/{name}/versions", args)

@inline create_intent_version(args) = create_intent_version(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.create_slot_type_version
    create_slot_type_version([::AWSConfig], arguments::Dict)
    create_slot_type_version([::AWSConfig]; name=, <keyword arguments>)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "POST", "/slottypes/{name}/versions", arguments::Dict)
    lex_models([::AWSConfig], "POST", "/slottypes/{name}/versions", name=, <keyword arguments>)

# CreateSlotTypeVersion Operation

Creates a new version of a slot type based on the `\$LATEST` version of the specified slot type. If the `\$LATEST` version of this resource has not changed since the last version that you created, Amazon Lex doesn't create a new version. It returns the last version that you created.

**Note**
> You can update only the `\$LATEST` version of a slot type. You can't update the numbered versions that you create with the `CreateSlotTypeVersion` operation.

When you create a version of a slot type, Amazon Lex sets the version to 1. Subsequent versions increment by 1. For more information, see [versioning-intro](@ref).

This operation requires permissions for the `lex:CreateSlotTypeVersion` action.

# Arguments

## `name = ::String` -- *Required*
The name of the slot type that you want to create a new version for. The name is case sensitive.


## `checksum = ::String`
Checksum for the `\$LATEST` version of the slot type that you want to publish. If you specify a checksum and the `\$LATEST` version of the slot type has a different checksum, Amazon Lex returns a `PreconditionFailedException` exception and doesn't publish the new version. If you don't specify a checksum, Amazon Lex publishes the `\$LATEST` version.




# Returns

`CreateSlotTypeVersionResponse`

# Exceptions

`NotFoundException`, `ConflictException`, `LimitExceededException`, `InternalFailureException`, `BadRequestException` or `PreconditionFailedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/CreateSlotTypeVersion)
"""

@inline create_slot_type_version(aws::AWSConfig=default_aws_config(); args...) = create_slot_type_version(aws, args)

@inline create_slot_type_version(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "POST", "/slottypes/{name}/versions", args)

@inline create_slot_type_version(args) = create_slot_type_version(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.delete_bot
    delete_bot([::AWSConfig], arguments::Dict)
    delete_bot([::AWSConfig]; name=)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "DELETE", "/bots/{name}", arguments::Dict)
    lex_models([::AWSConfig], "DELETE", "/bots/{name}", name=)

# DeleteBot Operation

Deletes all versions of the bot, including the `\$LATEST` version. To delete a specific version of the bot, use the [DeleteBotVersion](@ref) operation.

If a bot has an alias, you can't delete it. Instead, the `DeleteBot` operation returns a `ResourceInUseException` exception that includes a reference to the alias that refers to the bot. To remove the reference to the bot, delete the alias. If you get the same exception again, delete the referring alias until the `DeleteBot` operation is successful.

This operation requires permissions for the `lex:DeleteBot` action.

# Arguments

## `name = ::String` -- *Required*
The name of the bot. The name is case sensitive.




# Exceptions

`NotFoundException`, `ConflictException`, `LimitExceededException`, `InternalFailureException`, `BadRequestException` or `ResourceInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteBot)
"""

@inline delete_bot(aws::AWSConfig=default_aws_config(); args...) = delete_bot(aws, args)

@inline delete_bot(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "DELETE", "/bots/{name}", args)

@inline delete_bot(args) = delete_bot(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.delete_bot_alias
    delete_bot_alias([::AWSConfig], arguments::Dict)
    delete_bot_alias([::AWSConfig]; name=, botName=)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "DELETE", "/bots/{botName}/aliases/{name}", arguments::Dict)
    lex_models([::AWSConfig], "DELETE", "/bots/{botName}/aliases/{name}", name=, botName=)

# DeleteBotAlias Operation

Deletes an alias for the specified bot.

You can't delete an alias that is used in the association between a bot and a messaging channel. If an alias is used in a channel association, the `DeleteBot` operation returns a `ResourceInUseException` exception that includes a reference to the channel association that refers to the bot. You can remove the reference to the alias by deleting the channel association. If you get the same exception again, delete the referring association until the `DeleteBotAlias` operation is successful.

# Arguments

## `name = ::String` -- *Required*
The name of the alias to delete. The name is case sensitive.


## `botName = ::String` -- *Required*
The name of the bot that the alias points to.




# Exceptions

`NotFoundException`, `ConflictException`, `LimitExceededException`, `InternalFailureException`, `BadRequestException` or `ResourceInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteBotAlias)
"""

@inline delete_bot_alias(aws::AWSConfig=default_aws_config(); args...) = delete_bot_alias(aws, args)

@inline delete_bot_alias(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "DELETE", "/bots/{botName}/aliases/{name}", args)

@inline delete_bot_alias(args) = delete_bot_alias(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.delete_bot_channel_association
    delete_bot_channel_association([::AWSConfig], arguments::Dict)
    delete_bot_channel_association([::AWSConfig]; name=, botName=, aliasName=)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "DELETE", "/bots/{botName}/aliases/{aliasName}/channels/{name}", arguments::Dict)
    lex_models([::AWSConfig], "DELETE", "/bots/{botName}/aliases/{aliasName}/channels/{name}", name=, botName=, aliasName=)

# DeleteBotChannelAssociation Operation

Deletes the association between an Amazon Lex bot and a messaging platform.

This operation requires permission for the `lex:DeleteBotChannelAssociation` action.

# Arguments

## `name = ::String` -- *Required*
The name of the association. The name is case sensitive.


## `botName = ::String` -- *Required*
The name of the Amazon Lex bot.


## `aliasName = ::String` -- *Required*
An alias that points to the specific version of the Amazon Lex bot to which this association is being made.




# Exceptions

`NotFoundException`, `ConflictException`, `LimitExceededException`, `InternalFailureException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteBotChannelAssociation)
"""

@inline delete_bot_channel_association(aws::AWSConfig=default_aws_config(); args...) = delete_bot_channel_association(aws, args)

@inline delete_bot_channel_association(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "DELETE", "/bots/{botName}/aliases/{aliasName}/channels/{name}", args)

@inline delete_bot_channel_association(args) = delete_bot_channel_association(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.delete_bot_version
    delete_bot_version([::AWSConfig], arguments::Dict)
    delete_bot_version([::AWSConfig]; name=, version=)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "DELETE", "/bots/{name}/versions/{version}", arguments::Dict)
    lex_models([::AWSConfig], "DELETE", "/bots/{name}/versions/{version}", name=, version=)

# DeleteBotVersion Operation

Deletes a specific version of a bot. To delete all versions of a bot, use the [DeleteBot](@ref) operation.

This operation requires permissions for the `lex:DeleteBotVersion` action.

# Arguments

## `name = ::String` -- *Required*
The name of the bot.


## `version = ::String` -- *Required*
The version of the bot to delete. You cannot delete the `\$LATEST` version of the bot. To delete the `\$LATEST` version, use the [DeleteBot](@ref) operation.




# Exceptions

`NotFoundException`, `ConflictException`, `LimitExceededException`, `InternalFailureException`, `BadRequestException` or `ResourceInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteBotVersion)
"""

@inline delete_bot_version(aws::AWSConfig=default_aws_config(); args...) = delete_bot_version(aws, args)

@inline delete_bot_version(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "DELETE", "/bots/{name}/versions/{version}", args)

@inline delete_bot_version(args) = delete_bot_version(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.delete_intent
    delete_intent([::AWSConfig], arguments::Dict)
    delete_intent([::AWSConfig]; name=)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "DELETE", "/intents/{name}", arguments::Dict)
    lex_models([::AWSConfig], "DELETE", "/intents/{name}", name=)

# DeleteIntent Operation

Deletes all versions of the intent, including the `\$LATEST` version. To delete a specific version of the intent, use the [DeleteIntentVersion](@ref) operation.

You can delete a version of an intent only if it is not referenced. To delete an intent that is referred to in one or more bots (see [how-it-works](@ref)), you must remove those references first.

**Note**
> If you get the `ResourceInUseException` exception, it provides an example reference that shows where the intent is referenced. To remove the reference to the intent, either update the bot or delete it. If you get the same exception when you attempt to delete the intent again, repeat until the intent has no references and the call to `DeleteIntent` is successful.

This operation requires permission for the `lex:DeleteIntent` action.

# Arguments

## `name = ::String` -- *Required*
The name of the intent. The name is case sensitive.




# Exceptions

`NotFoundException`, `ConflictException`, `LimitExceededException`, `InternalFailureException`, `BadRequestException` or `ResourceInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteIntent)
"""

@inline delete_intent(aws::AWSConfig=default_aws_config(); args...) = delete_intent(aws, args)

@inline delete_intent(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "DELETE", "/intents/{name}", args)

@inline delete_intent(args) = delete_intent(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.delete_intent_version
    delete_intent_version([::AWSConfig], arguments::Dict)
    delete_intent_version([::AWSConfig]; name=, version=)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "DELETE", "/intents/{name}/versions/{version}", arguments::Dict)
    lex_models([::AWSConfig], "DELETE", "/intents/{name}/versions/{version}", name=, version=)

# DeleteIntentVersion Operation

Deletes a specific version of an intent. To delete all versions of a intent, use the [DeleteIntent](@ref) operation.

This operation requires permissions for the `lex:DeleteIntentVersion` action.

# Arguments

## `name = ::String` -- *Required*
The name of the intent.


## `version = ::String` -- *Required*
The version of the intent to delete. You cannot delete the `\$LATEST` version of the intent. To delete the `\$LATEST` version, use the [DeleteIntent](@ref) operation.




# Exceptions

`NotFoundException`, `ConflictException`, `LimitExceededException`, `InternalFailureException`, `BadRequestException` or `ResourceInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteIntentVersion)
"""

@inline delete_intent_version(aws::AWSConfig=default_aws_config(); args...) = delete_intent_version(aws, args)

@inline delete_intent_version(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "DELETE", "/intents/{name}/versions/{version}", args)

@inline delete_intent_version(args) = delete_intent_version(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.delete_slot_type
    delete_slot_type([::AWSConfig], arguments::Dict)
    delete_slot_type([::AWSConfig]; name=)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "DELETE", "/slottypes/{name}", arguments::Dict)
    lex_models([::AWSConfig], "DELETE", "/slottypes/{name}", name=)

# DeleteSlotType Operation

Deletes all versions of the slot type, including the `\$LATEST` version. To delete a specific version of the slot type, use the [DeleteSlotTypeVersion](@ref) operation.

You can delete a version of a slot type only if it is not referenced. To delete a slot type that is referred to in one or more intents, you must remove those references first.

**Note**
> If you get the `ResourceInUseException` exception, the exception provides an example reference that shows the intent where the slot type is referenced. To remove the reference to the slot type, either update the intent or delete it. If you get the same exception when you attempt to delete the slot type again, repeat until the slot type has no references and the `DeleteSlotType` call is successful.

This operation requires permission for the `lex:DeleteSlotType` action.

# Arguments

## `name = ::String` -- *Required*
The name of the slot type. The name is case sensitive.




# Exceptions

`NotFoundException`, `ConflictException`, `LimitExceededException`, `InternalFailureException`, `BadRequestException` or `ResourceInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteSlotType)
"""

@inline delete_slot_type(aws::AWSConfig=default_aws_config(); args...) = delete_slot_type(aws, args)

@inline delete_slot_type(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "DELETE", "/slottypes/{name}", args)

@inline delete_slot_type(args) = delete_slot_type(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.delete_slot_type_version
    delete_slot_type_version([::AWSConfig], arguments::Dict)
    delete_slot_type_version([::AWSConfig]; name=, version=)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "DELETE", "/slottypes/{name}/version/{version}", arguments::Dict)
    lex_models([::AWSConfig], "DELETE", "/slottypes/{name}/version/{version}", name=, version=)

# DeleteSlotTypeVersion Operation

Deletes a specific version of a slot type. To delete all versions of a slot type, use the [DeleteSlotType](@ref) operation.

This operation requires permissions for the `lex:DeleteSlotTypeVersion` action.

# Arguments

## `name = ::String` -- *Required*
The name of the slot type.


## `version = ::String` -- *Required*
The version of the slot type to delete. You cannot delete the `\$LATEST` version of the slot type. To delete the `\$LATEST` version, use the [DeleteSlotType](@ref) operation.




# Exceptions

`NotFoundException`, `ConflictException`, `LimitExceededException`, `InternalFailureException`, `BadRequestException` or `ResourceInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteSlotTypeVersion)
"""

@inline delete_slot_type_version(aws::AWSConfig=default_aws_config(); args...) = delete_slot_type_version(aws, args)

@inline delete_slot_type_version(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "DELETE", "/slottypes/{name}/version/{version}", args)

@inline delete_slot_type_version(args) = delete_slot_type_version(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.delete_utterances
    delete_utterances([::AWSConfig], arguments::Dict)
    delete_utterances([::AWSConfig]; botName=, userId=)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "DELETE", "/bots/{botName}/utterances/{userId}", arguments::Dict)
    lex_models([::AWSConfig], "DELETE", "/bots/{botName}/utterances/{userId}", botName=, userId=)

# DeleteUtterances Operation

Deletes stored utterances.

Amazon Lex stores the utterances that users send to your bot unless the `childDirected` field in the bot is set to `true`. Utterances are stored for 15 days for use with the [GetUtterancesView](@ref) operation, and then stored indefinately for use in improving the ability of your bot to respond to user input.

Use the `DeleteStoredUtterances` operation to manually delete stored utterances for a specific user.

This operation requires permissions for the `lex:DeleteUtterances` action.

# Arguments

## `botName = ::String` -- *Required*
The name of the bot that stored the utterances.


## `userId = ::String` -- *Required*
The unique identifier for the user that made the utterances. This is the user ID that was sent in the [PostContent](http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html) or [PostText](http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html) operation request that contained the utterance.




# Exceptions

`NotFoundException`, `LimitExceededException`, `InternalFailureException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteUtterances)
"""

@inline delete_utterances(aws::AWSConfig=default_aws_config(); args...) = delete_utterances(aws, args)

@inline delete_utterances(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "DELETE", "/bots/{botName}/utterances/{userId}", args)

@inline delete_utterances(args) = delete_utterances(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.get_bot
    get_bot([::AWSConfig], arguments::Dict)
    get_bot([::AWSConfig]; name=, versionoralias=)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "GET", "/bots/{name}/versions/{versionoralias}", arguments::Dict)
    lex_models([::AWSConfig], "GET", "/bots/{name}/versions/{versionoralias}", name=, versionoralias=)

# GetBot Operation

Returns metadata information for a specific bot. You must provide the bot name and the bot version or alias.

This operation requires permissions for the `lex:GetBot` action.

# Arguments

## `name = ::String` -- *Required*
The name of the bot. The name is case sensitive.


## `versionoralias = ::String` -- *Required*
The version or alias of the bot.




# Returns

`GetBotResponse`

# Exceptions

`NotFoundException`, `LimitExceededException`, `InternalFailureException` or `BadRequestException`.

# Example: To get information about a bot

This example shows how to get configuration information for a bot.

Input:
```
[
    "name" => "DocOrderPizza",
    "versionOrAlias" => "\$LATEST"
]
```

Output:
```
Dict(
    "version" => "\$LATEST",
    "name" => "DocOrderPizzaBot",
    "abortStatement" => Dict(
        "messages" => [
            Dict(
                "content" => "I don't understand. Can you try again?",
                "contentType" => "PlainText"
            ),
            Dict(
                "content" => "I'm sorry, I don't understand.",
                "contentType" => "PlainText"
            )
        ]
    ),
    "checksum" => "20172ee3-fa06-49b2-bbc5-667c090303e9",
    "childDirected" => true,
    "clarificationPrompt" => Dict(
        "maxAttempts" => 1,
        "messages" => [
            Dict(
                "content" => "I'm sorry, I didn't hear that. Can you repeate what you just said?",
                "contentType" => "PlainText"
            ),
            Dict(
                "content" => "Can you say that again?",
                "contentType" => "PlainText"
            )
        ]
    ),
    "createdDate" => 1.494360160133e9,
    "description" => "Orders a pizza from a local pizzeria.",
    "idleSessionTTLInSeconds" => 300,
    "intents" => [
        Dict(
            "intentName" => "DocOrderPizza",
            "intentVersion" => "\$LATEST"
        )
    ],
    "lastUpdatedDate" => 1.494360160133e9,
    "locale" => "en-US",
    "status" => "NOT_BUILT"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBot)
"""

@inline get_bot(aws::AWSConfig=default_aws_config(); args...) = get_bot(aws, args)

@inline get_bot(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "GET", "/bots/{name}/versions/{versionoralias}", args)

@inline get_bot(args) = get_bot(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.get_bot_alias
    get_bot_alias([::AWSConfig], arguments::Dict)
    get_bot_alias([::AWSConfig]; name=, botName=)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "GET", "/bots/{botName}/aliases/{name}", arguments::Dict)
    lex_models([::AWSConfig], "GET", "/bots/{botName}/aliases/{name}", name=, botName=)

# GetBotAlias Operation

Returns information about an Amazon Lex bot alias. For more information about aliases, see [versioning-aliases](@ref).

This operation requires permissions for the `lex:GetBotAlias` action.

# Arguments

## `name = ::String` -- *Required*
The name of the bot alias. The name is case sensitive.


## `botName = ::String` -- *Required*
The name of the bot.




# Returns

`GetBotAliasResponse`

# Exceptions

`NotFoundException`, `LimitExceededException`, `InternalFailureException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotAlias)
"""

@inline get_bot_alias(aws::AWSConfig=default_aws_config(); args...) = get_bot_alias(aws, args)

@inline get_bot_alias(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "GET", "/bots/{botName}/aliases/{name}", args)

@inline get_bot_alias(args) = get_bot_alias(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.get_bot_aliases
    get_bot_aliases([::AWSConfig], arguments::Dict)
    get_bot_aliases([::AWSConfig]; botName=, <keyword arguments>)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "GET", "/bots/{botName}/aliases/", arguments::Dict)
    lex_models([::AWSConfig], "GET", "/bots/{botName}/aliases/", botName=, <keyword arguments>)

# GetBotAliases Operation

Returns a list of aliases for a specified Amazon Lex bot.

This operation requires permissions for the `lex:GetBotAliases` action.

# Arguments

## `botName = ::String` -- *Required*
The name of the bot.


## `nextToken = ::String`
A pagination token for fetching the next page of aliases. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of aliases, specify the pagination token in the next request.


## `maxResults = ::Int`
The maximum number of aliases to return in the response. The default is 50. .


## `nameContains = ::String`
Substring to match in bot alias names. An alias will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."




# Returns

`GetBotAliasesResponse`

# Exceptions

`LimitExceededException`, `InternalFailureException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotAliases)
"""

@inline get_bot_aliases(aws::AWSConfig=default_aws_config(); args...) = get_bot_aliases(aws, args)

@inline get_bot_aliases(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "GET", "/bots/{botName}/aliases/", args)

@inline get_bot_aliases(args) = get_bot_aliases(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.get_bot_channel_association
    get_bot_channel_association([::AWSConfig], arguments::Dict)
    get_bot_channel_association([::AWSConfig]; name=, botName=, aliasName=)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "GET", "/bots/{botName}/aliases/{aliasName}/channels/{name}", arguments::Dict)
    lex_models([::AWSConfig], "GET", "/bots/{botName}/aliases/{aliasName}/channels/{name}", name=, botName=, aliasName=)

# GetBotChannelAssociation Operation

Returns information about the association between an Amazon Lex bot and a messaging platform.

This operation requires permissions for the `lex:GetBotChannelAssociation` action.

# Arguments

## `name = ::String` -- *Required*
The name of the association between the bot and the channel. The name is case sensitive.


## `botName = ::String` -- *Required*
The name of the Amazon Lex bot.


## `aliasName = ::String` -- *Required*
An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.




# Returns

`GetBotChannelAssociationResponse`

# Exceptions

`NotFoundException`, `LimitExceededException`, `InternalFailureException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotChannelAssociation)
"""

@inline get_bot_channel_association(aws::AWSConfig=default_aws_config(); args...) = get_bot_channel_association(aws, args)

@inline get_bot_channel_association(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "GET", "/bots/{botName}/aliases/{aliasName}/channels/{name}", args)

@inline get_bot_channel_association(args) = get_bot_channel_association(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.get_bot_channel_associations
    get_bot_channel_associations([::AWSConfig], arguments::Dict)
    get_bot_channel_associations([::AWSConfig]; botName=, aliasName=, <keyword arguments>)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "GET", "/bots/{botName}/aliases/{aliasName}/channels/", arguments::Dict)
    lex_models([::AWSConfig], "GET", "/bots/{botName}/aliases/{aliasName}/channels/", botName=, aliasName=, <keyword arguments>)

# GetBotChannelAssociations Operation

Returns a list of all of the channels associated with the specified bot.

The `GetBotChannelAssociations` operation requires permissions for the `lex:GetBotChannelAssociations` action.

# Arguments

## `botName = ::String` -- *Required*
The name of the Amazon Lex bot in the association.


## `aliasName = ::String` -- *Required*
An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.


## `nextToken = ::String`
A pagination token for fetching the next page of associations. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of associations, specify the pagination token in the next request.


## `maxResults = ::Int`
The maximum number of associations to return in the response. The default is 50.


## `nameContains = ::String`
Substring to match in channel association names. An association will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz." To return all bot channel associations, use a hyphen ("-") as the `nameContains` parameter.




# Returns

`GetBotChannelAssociationsResponse`

# Exceptions

`LimitExceededException`, `InternalFailureException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotChannelAssociations)
"""

@inline get_bot_channel_associations(aws::AWSConfig=default_aws_config(); args...) = get_bot_channel_associations(aws, args)

@inline get_bot_channel_associations(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "GET", "/bots/{botName}/aliases/{aliasName}/channels/", args)

@inline get_bot_channel_associations(args) = get_bot_channel_associations(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.get_bot_versions
    get_bot_versions([::AWSConfig], arguments::Dict)
    get_bot_versions([::AWSConfig]; name=, <keyword arguments>)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "GET", "/bots/{name}/versions/", arguments::Dict)
    lex_models([::AWSConfig], "GET", "/bots/{name}/versions/", name=, <keyword arguments>)

# GetBotVersions Operation

Gets information about all of the versions of a bot.

The `GetBotVersions` operation returns a `BotMetadata` object for each version of a bot. For example, if a bot has three numbered versions, the `GetBotVersions` operation returns four `BotMetadata` objects in the response, one for each numbered version and one for the `\$LATEST` version.

The `GetBotVersions` operation always returns at least one version, the `\$LATEST` version.

This operation requires permissions for the `lex:GetBotVersions` action.

# Arguments

## `name = ::String` -- *Required*
The name of the bot for which versions should be returned.


## `nextToken = ::String`
A pagination token for fetching the next page of bot versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request.


## `maxResults = ::Int`
The maximum number of bot versions to return in the response. The default is 10.




# Returns

`GetBotVersionsResponse`

# Exceptions

`NotFoundException`, `LimitExceededException`, `InternalFailureException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotVersions)
"""

@inline get_bot_versions(aws::AWSConfig=default_aws_config(); args...) = get_bot_versions(aws, args)

@inline get_bot_versions(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "GET", "/bots/{name}/versions/", args)

@inline get_bot_versions(args) = get_bot_versions(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.get_bots
    get_bots([::AWSConfig], arguments::Dict)
    get_bots([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "GET", "/bots/", arguments::Dict)
    lex_models([::AWSConfig], "GET", "/bots/", <keyword arguments>)

# GetBots Operation

Returns bot information as follows:

*   If you provide the `nameContains` field, the response includes information for the `\$LATEST` version of all bots whose name contains the specified string.

*   If you don't specify the `nameContains` field, the operation returns information about the `\$LATEST` version of all of your bots.

This operation requires permission for the `lex:GetBots` action.

# Arguments

## `nextToken = ::String`
A pagination token that fetches the next page of bots. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of bots, specify the pagination token in the next request.


## `maxResults = ::Int`
The maximum number of bots to return in the response that the request will return. The default is 10.


## `nameContains = ::String`
Substring to match in bot names. A bot will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."




# Returns

`GetBotsResponse`

# Exceptions

`NotFoundException`, `LimitExceededException`, `InternalFailureException` or `BadRequestException`.

# Example: To get a list of bots

This example shows how to get a list of all of the bots in your account.

Input:
```
[
    "maxResults" => 5,
    "nextToken" => ""
]
```

Output:
```
Dict(
    "bots" => [
        Dict(
            "version" => "\$LATEST",
            "name" => "DocOrderPizzaBot",
            "createdDate" => 1.494360160133e9,
            "description" => "Orders a pizza from a local pizzeria.",
            "lastUpdatedDate" => 1.494360160133e9,
            "status" => "NOT_BUILT"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBots)
"""

@inline get_bots(aws::AWSConfig=default_aws_config(); args...) = get_bots(aws, args)

@inline get_bots(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "GET", "/bots/", args)

@inline get_bots(args) = get_bots(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.get_builtin_intent
    get_builtin_intent([::AWSConfig], arguments::Dict)
    get_builtin_intent([::AWSConfig]; signature=)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "GET", "/builtins/intents/{signature}", arguments::Dict)
    lex_models([::AWSConfig], "GET", "/builtins/intents/{signature}", signature=)

# GetBuiltinIntent Operation

Returns information about a built-in intent.

This operation requires permission for the `lex:GetBuiltinIntent` action.

# Arguments

## `signature = ::String` -- *Required*
The unique identifier for a built-in intent. To find the signature for an intent, see [Standard Built-in Intents](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents) in the *Alexa Skills Kit*.




# Returns

`GetBuiltinIntentResponse`

# Exceptions

`NotFoundException`, `LimitExceededException`, `InternalFailureException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBuiltinIntent)
"""

@inline get_builtin_intent(aws::AWSConfig=default_aws_config(); args...) = get_builtin_intent(aws, args)

@inline get_builtin_intent(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "GET", "/builtins/intents/{signature}", args)

@inline get_builtin_intent(args) = get_builtin_intent(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.get_builtin_intents
    get_builtin_intents([::AWSConfig], arguments::Dict)
    get_builtin_intents([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "GET", "/builtins/intents/", arguments::Dict)
    lex_models([::AWSConfig], "GET", "/builtins/intents/", <keyword arguments>)

# GetBuiltinIntents Operation

Gets a list of built-in intents that meet the specified criteria.

This operation requires permission for the `lex:GetBuiltinIntents` action.

# Arguments

## `locale = "en-US"`
A list of locales that the intent supports.


## `signatureContains = ::String`
Substring to match in built-in intent signatures. An intent will be returned if any part of its signature matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz." To find the signature for an intent, see [Standard Built-in Intents](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents) in the *Alexa Skills Kit*.


## `nextToken = ::String`
A pagination token that fetches the next page of intents. If this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, use the pagination token in the next request.


## `maxResults = ::Int`
The maximum number of intents to return in the response. The default is 10.




# Returns

`GetBuiltinIntentsResponse`

# Exceptions

`LimitExceededException`, `InternalFailureException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBuiltinIntents)
"""

@inline get_builtin_intents(aws::AWSConfig=default_aws_config(); args...) = get_builtin_intents(aws, args)

@inline get_builtin_intents(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "GET", "/builtins/intents/", args)

@inline get_builtin_intents(args) = get_builtin_intents(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.get_builtin_slot_types
    get_builtin_slot_types([::AWSConfig], arguments::Dict)
    get_builtin_slot_types([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "GET", "/builtins/slottypes/", arguments::Dict)
    lex_models([::AWSConfig], "GET", "/builtins/slottypes/", <keyword arguments>)

# GetBuiltinSlotTypes Operation

Gets a list of built-in slot types that meet the specified criteria.

For a list of built-in slot types, see [Slot Type Reference](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference) in the *Alexa Skills Kit*.

This operation requires permission for the `lex:GetBuiltInSlotTypes` action.

# Arguments

## `locale = "en-US"`
A list of locales that the slot type supports.


## `signatureContains = ::String`
Substring to match in built-in slot type signatures. A slot type will be returned if any part of its signature matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."


## `nextToken = ::String`
A pagination token that fetches the next page of slot types. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of slot types, specify the pagination token in the next request.


## `maxResults = ::Int`
The maximum number of slot types to return in the response. The default is 10.




# Returns

`GetBuiltinSlotTypesResponse`

# Exceptions

`LimitExceededException`, `InternalFailureException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBuiltinSlotTypes)
"""

@inline get_builtin_slot_types(aws::AWSConfig=default_aws_config(); args...) = get_builtin_slot_types(aws, args)

@inline get_builtin_slot_types(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "GET", "/builtins/slottypes/", args)

@inline get_builtin_slot_types(args) = get_builtin_slot_types(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.get_export
    get_export([::AWSConfig], arguments::Dict)
    get_export([::AWSConfig]; name=, version=, resourceType=, exportType=)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "GET", "/exports/", arguments::Dict)
    lex_models([::AWSConfig], "GET", "/exports/", name=, version=, resourceType=, exportType=)

# GetExport Operation

Exports the contents of a Amazon Lex resource in a specified format.

# Arguments

## `name = ::String` -- *Required*
The name of the bot to export.


## `version = ::String` -- *Required*
The version of the bot to export.


## `resourceType = "BOT"` -- *Required*
The type of resource to export.


## `exportType = "ALEXA_SKILLS_KIT"` -- *Required*
The format of the exported data.




# Returns

`GetExportResponse`

# Exceptions

`NotFoundException`, `LimitExceededException`, `InternalFailureException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetExport)
"""

@inline get_export(aws::AWSConfig=default_aws_config(); args...) = get_export(aws, args)

@inline get_export(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "GET", "/exports/", args)

@inline get_export(args) = get_export(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.get_intent
    get_intent([::AWSConfig], arguments::Dict)
    get_intent([::AWSConfig]; name=, version=)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "GET", "/intents/{name}/versions/{version}", arguments::Dict)
    lex_models([::AWSConfig], "GET", "/intents/{name}/versions/{version}", name=, version=)

# GetIntent Operation

Returns information about an intent. In addition to the intent name, you must specify the intent version.

This operation requires permissions to perform the `lex:GetIntent` action.

# Arguments

## `name = ::String` -- *Required*
The name of the intent. The name is case sensitive.


## `version = ::String` -- *Required*
The version of the intent.




# Returns

`GetIntentResponse`

# Exceptions

`NotFoundException`, `LimitExceededException`, `InternalFailureException` or `BadRequestException`.

# Example: To get a information about an intent

This example shows how to get information about an intent.

Input:
```
[
    "version" => "\$LATEST",
    "name" => "DocOrderPizza"
]
```

Output:
```
Dict(
    "version" => "\$LATEST",
    "name" => "DocOrderPizza",
    "checksum" => "ca9bc13d-afc8-4706-bbaf-091f7a5935d6",
    "conclusionStatement" => Dict(
        "messages" => [
            Dict(
                "content" => "All right, I ordered  you a {Crust} crust {Type} pizza with {Sauce} sauce.",
                "contentType" => "PlainText"
            ),
            Dict(
                "content" => "OK, your {Crust} crust {Type} pizza with {Sauce} sauce is on the way.",
                "contentType" => "PlainText"
            )
        ],
        "responseCard" => "foo"
    ),
    "confirmationPrompt" => Dict(
        "maxAttempts" => 1,
        "messages" => [
            Dict(
                "content" => "Should I order  your {Crust} crust {Type} pizza with {Sauce} sauce?",
                "contentType" => "PlainText"
            )
        ]
    ),
    "createdDate" => 1.494359783453e9,
    "description" => "Order a pizza from a local pizzeria.",
    "fulfillmentActivity" => Dict(
        "type" => "ReturnIntent"
    ),
    "lastUpdatedDate" => 1.494359783453e9,
    "rejectionStatement" => Dict(
        "messages" => [
            Dict(
                "content" => "Ok, I'll cancel your order.",
                "contentType" => "PlainText"
            ),
            Dict(
                "content" => "I cancelled your order.",
                "contentType" => "PlainText"
            )
        ]
    ),
    "sampleUtterances" => [
        "Order me a pizza.",
        "Order me a {Type} pizza.",
        "I want a {Crust} crust {Type} pizza",
        "I want a {Crust} crust {Type} pizza with {Sauce} sauce."
    ],
    "slots" => [
        Dict(
            "name" => "Type",
            "description" => "The type of pizza to order.",
            "priority" => 1,
            "sampleUtterances" => [
                "Get me a {Type} pizza.",
                "A {Type} pizza please.",
                "I'd like a {Type} pizza."
            ],
            "slotConstraint" => "Required",
            "slotType" => "DocPizzaType",
            "slotTypeVersion" => "\$LATEST",
            "valueElicitationPrompt" => Dict(
                "maxAttempts" => 1,
                "messages" => [
                    Dict(
                        "content" => "What type of pizza would you like?",
                        "contentType" => "PlainText"
                    ),
                    Dict(
                        "content" => "Vegie or cheese pizza?",
                        "contentType" => "PlainText"
                    ),
                    Dict(
                        "content" => "I can get you a vegie or a cheese pizza.",
                        "contentType" => "PlainText"
                    )
                ]
            )
        ),
        Dict(
            "name" => "Crust",
            "description" => "The type of pizza crust to order.",
            "priority" => 2,
            "sampleUtterances" => [
                "Make it a {Crust} crust.",
                "I'd like a {Crust} crust."
            ],
            "slotConstraint" => "Required",
            "slotType" => "DocPizzaCrustType",
            "slotTypeVersion" => "\$LATEST",
            "valueElicitationPrompt" => Dict(
                "maxAttempts" => 1,
                "messages" => [
                    Dict(
                        "content" => "What type of crust would you like?",
                        "contentType" => "PlainText"
                    ),
                    Dict(
                        "content" => "Thick or thin crust?",
                        "contentType" => "PlainText"
                    )
                ]
            )
        ),
        Dict(
            "name" => "Sauce",
            "description" => "The type of sauce to use on the pizza.",
            "priority" => 3,
            "sampleUtterances" => [
                "Make it {Sauce} sauce.",
                "I'd like {Sauce} sauce."
            ],
            "slotConstraint" => "Required",
            "slotType" => "DocPizzaSauceType",
            "slotTypeVersion" => "\$LATEST",
            "valueElicitationPrompt" => Dict(
                "maxAttempts" => 1,
                "messages" => [
                    Dict(
                        "content" => "White or red sauce?",
                        "contentType" => "PlainText"
                    ),
                    Dict(
                        "content" => "Garlic or tomato sauce?",
                        "contentType" => "PlainText"
                    )
                ]
            )
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetIntent)
"""

@inline get_intent(aws::AWSConfig=default_aws_config(); args...) = get_intent(aws, args)

@inline get_intent(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "GET", "/intents/{name}/versions/{version}", args)

@inline get_intent(args) = get_intent(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.get_intent_versions
    get_intent_versions([::AWSConfig], arguments::Dict)
    get_intent_versions([::AWSConfig]; name=, <keyword arguments>)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "GET", "/intents/{name}/versions/", arguments::Dict)
    lex_models([::AWSConfig], "GET", "/intents/{name}/versions/", name=, <keyword arguments>)

# GetIntentVersions Operation

Gets information about all of the versions of an intent.

The `GetIntentVersions` operation returns an `IntentMetadata` object for each version of an intent. For example, if an intent has three numbered versions, the `GetIntentVersions` operation returns four `IntentMetadata` objects in the response, one for each numbered version and one for the `\$LATEST` version.

The `GetIntentVersions` operation always returns at least one version, the `\$LATEST` version.

This operation requires permissions for the `lex:GetIntentVersions` action.

# Arguments

## `name = ::String` -- *Required*
The name of the intent for which versions should be returned.


## `nextToken = ::String`
A pagination token for fetching the next page of intent versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request.


## `maxResults = ::Int`
The maximum number of intent versions to return in the response. The default is 10.




# Returns

`GetIntentVersionsResponse`

# Exceptions

`NotFoundException`, `LimitExceededException`, `InternalFailureException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetIntentVersions)
"""

@inline get_intent_versions(aws::AWSConfig=default_aws_config(); args...) = get_intent_versions(aws, args)

@inline get_intent_versions(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "GET", "/intents/{name}/versions/", args)

@inline get_intent_versions(args) = get_intent_versions(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.get_intents
    get_intents([::AWSConfig], arguments::Dict)
    get_intents([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "GET", "/intents/", arguments::Dict)
    lex_models([::AWSConfig], "GET", "/intents/", <keyword arguments>)

# GetIntents Operation

Returns intent information as follows:

*   If you specify the `nameContains` field, returns the `\$LATEST` version of all intents that contain the specified string.

*   If you don't specify the `nameContains` field, returns information about the `\$LATEST` version of all intents.

The operation requires permission for the `lex:GetIntents` action.

# Arguments

## `nextToken = ::String`
A pagination token that fetches the next page of intents. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, specify the pagination token in the next request.


## `maxResults = ::Int`
The maximum number of intents to return in the response. The default is 10.


## `nameContains = ::String`
Substring to match in intent names. An intent will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."




# Returns

`GetIntentsResponse`

# Exceptions

`NotFoundException`, `LimitExceededException`, `InternalFailureException` or `BadRequestException`.

# Example: To get a list of intents

This example shows how to get a list of all of the intents in your account.

Input:
```
[
    "maxResults" => 10,
    "nextToken" => ""
]
```

Output:
```
Dict(
    "intents" => [
        Dict(
            "version" => "\$LATEST",
            "name" => "DocOrderPizza",
            "createdDate" => 1.494359783453e9,
            "description" => "Order a pizza from a local pizzeria.",
            "lastUpdatedDate" => 1.494359783453e9
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetIntents)
"""

@inline get_intents(aws::AWSConfig=default_aws_config(); args...) = get_intents(aws, args)

@inline get_intents(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "GET", "/intents/", args)

@inline get_intents(args) = get_intents(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.get_slot_type
    get_slot_type([::AWSConfig], arguments::Dict)
    get_slot_type([::AWSConfig]; name=, version=)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "GET", "/slottypes/{name}/versions/{version}", arguments::Dict)
    lex_models([::AWSConfig], "GET", "/slottypes/{name}/versions/{version}", name=, version=)

# GetSlotType Operation

Returns information about a specific version of a slot type. In addition to specifying the slot type name, you must specify the slot type version.

This operation requires permissions for the `lex:GetSlotType` action.

# Arguments

## `name = ::String` -- *Required*
The name of the slot type. The name is case sensitive.


## `version = ::String` -- *Required*
The version of the slot type.




# Returns

`GetSlotTypeResponse`

# Exceptions

`NotFoundException`, `LimitExceededException`, `InternalFailureException` or `BadRequestException`.

# Example: To get information about a slot type

This example shows how to get information about a slot type.

Input:
```
[
    "version" => "\$LATEST",
    "name" => "DocPizzaCrustType"
]
```

Output:
```
Dict(
    "version" => "\$LATEST",
    "name" => "DocPizzaCrustType",
    "checksum" => "210b3d5a-90a3-4b22-ac7e-f50c2c71095f",
    "createdDate" => 1.494359274403e9,
    "description" => "Available crust types",
    "enumerationValues" => [
        Dict(
            "value" => "thick"
        ),
        Dict(
            "value" => "thin"
        )
    ],
    "lastUpdatedDate" => 1.494359274403e9
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetSlotType)
"""

@inline get_slot_type(aws::AWSConfig=default_aws_config(); args...) = get_slot_type(aws, args)

@inline get_slot_type(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "GET", "/slottypes/{name}/versions/{version}", args)

@inline get_slot_type(args) = get_slot_type(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.get_slot_type_versions
    get_slot_type_versions([::AWSConfig], arguments::Dict)
    get_slot_type_versions([::AWSConfig]; name=, <keyword arguments>)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "GET", "/slottypes/{name}/versions/", arguments::Dict)
    lex_models([::AWSConfig], "GET", "/slottypes/{name}/versions/", name=, <keyword arguments>)

# GetSlotTypeVersions Operation

Gets information about all versions of a slot type.

The `GetSlotTypeVersions` operation returns a `SlotTypeMetadata` object for each version of a slot type. For example, if a slot type has three numbered versions, the `GetSlotTypeVersions` operation returns four `SlotTypeMetadata` objects in the response, one for each numbered version and one for the `\$LATEST` version.

The `GetSlotTypeVersions` operation always returns at least one version, the `\$LATEST` version.

This operation requires permissions for the `lex:GetSlotTypeVersions` action.

# Arguments

## `name = ::String` -- *Required*
The name of the slot type for which versions should be returned.


## `nextToken = ::String`
A pagination token for fetching the next page of slot type versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request.


## `maxResults = ::Int`
The maximum number of slot type versions to return in the response. The default is 10.




# Returns

`GetSlotTypeVersionsResponse`

# Exceptions

`NotFoundException`, `LimitExceededException`, `InternalFailureException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetSlotTypeVersions)
"""

@inline get_slot_type_versions(aws::AWSConfig=default_aws_config(); args...) = get_slot_type_versions(aws, args)

@inline get_slot_type_versions(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "GET", "/slottypes/{name}/versions/", args)

@inline get_slot_type_versions(args) = get_slot_type_versions(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.get_slot_types
    get_slot_types([::AWSConfig], arguments::Dict)
    get_slot_types([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "GET", "/slottypes/", arguments::Dict)
    lex_models([::AWSConfig], "GET", "/slottypes/", <keyword arguments>)

# GetSlotTypes Operation

Returns slot type information as follows:

*   If you specify the `nameContains` field, returns the `\$LATEST` version of all slot types that contain the specified string.

*   If you don't specify the `nameContains` field, returns information about the `\$LATEST` version of all slot types.

The operation requires permission for the `lex:GetSlotTypes` action.

# Arguments

## `nextToken = ::String`
A pagination token that fetches the next page of slot types. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch next page of slot types, specify the pagination token in the next request.


## `maxResults = ::Int`
The maximum number of slot types to return in the response. The default is 10.


## `nameContains = ::String`
Substring to match in slot type names. A slot type will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."




# Returns

`GetSlotTypesResponse`

# Exceptions

`NotFoundException`, `LimitExceededException`, `InternalFailureException` or `BadRequestException`.

# Example: To get a list of slot types

This example shows how to get a list of all of the slot types in your account.

Input:
```
[
    "maxResults" => 10,
    "nextToken" => ""
]
```

Output:
```
Dict(
    "slotTypes" => [
        Dict(
            "version" => "\$LATEST",
            "name" => "DocPizzaCrustType",
            "createdDate" => 1.494359274403e9,
            "description" => "Available crust types",
            "lastUpdatedDate" => 1.494359274403e9
        ),
        Dict(
            "version" => "\$LATEST",
            "name" => "DocPizzaSauceType",
            "createdDate" => 1.49435644223e9,
            "description" => "Available pizza sauces",
            "lastUpdatedDate" => 1.49435644223e9
        ),
        Dict(
            "version" => "\$LATEST",
            "name" => "DocPizzaType",
            "createdDate" => 1.494359198656e9,
            "description" => "Available pizzas",
            "lastUpdatedDate" => 1.494359198656e9
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetSlotTypes)
"""

@inline get_slot_types(aws::AWSConfig=default_aws_config(); args...) = get_slot_types(aws, args)

@inline get_slot_types(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "GET", "/slottypes/", args)

@inline get_slot_types(args) = get_slot_types(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.get_utterances_view
    get_utterances_view([::AWSConfig], arguments::Dict)
    get_utterances_view([::AWSConfig]; botname=, bot_versions=, status_type=)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "GET", "/bots/{botname}/utterances?view=aggregation", arguments::Dict)
    lex_models([::AWSConfig], "GET", "/bots/{botname}/utterances?view=aggregation", botname=, bot_versions=, status_type=)

# GetUtterancesView Operation

Use the `GetUtterancesView` operation to get information about the utterances that your users have made to your bot. You can use this list to tune the utterances that your bot responds to.

For example, say that you have created a bot to order flowers. After your users have used your bot for a while, use the `GetUtterancesView` operation to see the requests that they have made and whether they have been successful. You might find that the utterance "I want flowers" is not being recognized. You could add this utterance to the `OrderFlowers` intent so that your bot recognizes that utterance.

After you publish a new version of a bot, you can get information about the old version and the new so that you can compare the performance across the two versions.

Data is available for the last 15 days. You can request information for up to 5 versions in each request. The response contains information about a maximum of 100 utterances for each version.

If the bot's `childDirected` field is set to `true`, utterances for the bot are not stored and cannot be retrieved with the `GetUtterancesView` operation. For more information, see [PutBot](@ref).

This operation requires permissions for the `lex:GetUtterancesView` action.

# Arguments

## `botname = ::String` -- *Required*
The name of the bot for which utterance information should be returned.


## `bot_versions = [::String, ...]` -- *Required*
An array of bot versions for which utterance information should be returned. The limit is 5 versions per request.


## `status_type = "Detected" or "Missed"` -- *Required*
To return utterances that were recognized and handled, use`Detected`. To return utterances that were not recognized, use `Missed`.




# Returns

`GetUtterancesViewResponse`

# Exceptions

`LimitExceededException`, `InternalFailureException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetUtterancesView)
"""

@inline get_utterances_view(aws::AWSConfig=default_aws_config(); args...) = get_utterances_view(aws, args)

@inline get_utterances_view(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "GET", "/bots/{botname}/utterances?view=aggregation", args)

@inline get_utterances_view(args) = get_utterances_view(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.put_bot
    put_bot([::AWSConfig], arguments::Dict)
    put_bot([::AWSConfig]; name=, locale=, childDirected=, <keyword arguments>)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "PUT", "/bots/{name}/versions/\$LATEST", arguments::Dict)
    lex_models([::AWSConfig], "PUT", "/bots/{name}/versions/\$LATEST", name=, locale=, childDirected=, <keyword arguments>)

# PutBot Operation

Creates an Amazon Lex conversational bot or replaces an existing bot. When you create or update a bot you are only required to specify a name. You can use this to add intents later, or to remove intents from an existing bot. When you create a bot with a name only, the bot is created or updated but Amazon Lex returns the `response `FAILED`. You can build the bot after you add one or more intents. For more information about Amazon Lex bots, see [how-it-works](@ref).`

 `If you specify the name of an existing bot, the fields in the request replace the existing values in the `\$LATEST` version of the bot. Amazon Lex removes any fields that you don't provide values for in the request, except for the `idleTTLInSeconds` and `privacySettings` fields, which are set to their default values. If you don't specify values for required fields, Amazon Lex throws an exception.

This operation requires permissions for the `lex:PutBot` action. For more information, see [auth-and-access-control](@ref).`

# Arguments

## `name = ::String` -- *Required*
The name of the bot. The name is *not* case sensitive.


## `description = ::String`
A description of the bot.


## `intents = [[ ... ], ...]`
An array of `Intent` objects. Each intent represents a command that a user can express. For example, a pizza ordering bot might support an OrderPizza intent. For more information, see [how-it-works](@ref).
```
 intents = [[
        "intentName" => <required> ::String,
        "intentVersion" => <required> ::String
    ], ...]
```

## `clarificationPrompt = [ ... ]`
When Amazon Lex doesn't understand the user's intent, it uses this message to get clarification. To specify how many times Amazon Lex should repeate the clarification prompt, use the `maxAttempts` field. If Amazon Lex still doesn't understand, it sends the message in the `abortStatement` field.

When you create a clarification prompt, make sure that it suggests the correct response from the user. for example, for a bot that orders pizza and drinks, you might create this clarification prompt: "What would you like to do? You can say 'Order a pizza' or 'Order a drink.'"
```
 clarificationPrompt = [
        "messages" => <required> [[
            "contentType" => <required> "PlainText" or "SSML",
            "content" => <required> ::String
        ], ...],
        "maxAttempts" => <required> ::Int,
        "responseCard" =>  ::String
    ]
```

## `abortStatement = [ ... ]`
When Amazon Lex can't understand the user's input in context, it tries to elicit the information a few times. After that, Amazon Lex sends the message defined in `abortStatement` to the user, and then aborts the conversation. To set the number of retries, use the `valueElicitationPrompt` field for the slot type.

For example, in a pizza ordering bot, Amazon Lex might ask a user "What type of crust would you like?" If the user's response is not one of the expected responses (for example, "thin crust, "deep dish," etc.), Amazon Lex tries to elicit a correct response a few more times.

For example, in a pizza ordering application, `OrderPizza` might be one of the intents. This intent might require the `CrustType` slot. You specify the `valueElicitationPrompt` field when you create the `CrustType` slot.
```
 abortStatement = [
        "messages" => <required> [[
            "contentType" => <required> "PlainText" or "SSML",
            "content" => <required> ::String
        ], ...],
        "responseCard" =>  ::String
    ]
```

## `idleSessionTTLInSeconds = ::Int`
The maximum time in seconds that Amazon Lex retains the data gathered in a conversation.

A user interaction session remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Lex deletes any data provided before the timeout.

For example, suppose that a user chooses the OrderPizza intent, but gets sidetracked halfway through placing an order. If the user doesn't complete the order within the specified time, Amazon Lex discards the slot information that it gathered, and the user must start over.

If you don't include the `idleSessionTTLInSeconds` element in a `PutBot` operation request, Amazon Lex uses the default value. This is also true if the request replaces an existing bot.

The default is 300 seconds (5 minutes).


## `voiceId = ::String`
The Amazon Polly voice ID that you want Amazon Lex to use for voice interactions with the user. The locale configured for the voice must match the locale of the bot. For more information, see [Available Voices](http://docs.aws.amazon.com/polly/latest/dg/voicelist.html) in the *Amazon Polly Developer Guide*.


## `checksum = ::String`
Identifies a specific revision of the `\$LATEST` version.

When you create a new bot, leave the `checksum` field blank. If you specify a checksum you get a `BadRequestException` exception.

When you want to update a bot, set the `checksum` field to the checksum of the most recent revision of the `\$LATEST` version. If you don't specify the `checksum` field, or if the checksum does not match the `\$LATEST` version, you get a `PreconditionFailedException` exception.


## `processBehavior = "SAVE" or "BUILD"`
If you set the `processBehavior` element to `Build`, Amazon Lex builds the bot so that it can be run. If you set the element to `Save`Amazon Lex saves the bot, but doesn't build it.

If you don't specify this value, the default value is `Save`.


## `locale = "en-US"` -- *Required*
Specifies the target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot.

The default is `en-US`.


## `childDirected = ::Bool` -- *Required*
For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying `true` or `false` in the `childDirected` field. By specifying `true` in the `childDirected` field, you confirm that your use of Amazon Lex **is** related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. By specifying `false` in the `childDirected` field, you confirm that your use of Amazon Lex **is not** related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. You may not specify a default value for the `childDirected` field that does not accurately reflect whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA.

If your use of Amazon Lex relates to a website, program, or other application that is directed in whole or in part, to children under age 13, you must obtain any required verifiable parental consent under COPPA. For information regarding the use of Amazon Lex in connection with websites, programs, or other applications that are directed or targeted, in whole or in part, to children under age 13, see the [Amazon Lex FAQ.](https://aws.amazon.com/lex/faqs#data-security)




# Returns

`PutBotResponse`

# Exceptions

`ConflictException`, `LimitExceededException`, `InternalFailureException`, `BadRequestException` or `PreconditionFailedException`.

# Example: To create a bot

This example shows how to create a bot for ordering pizzas.

Input:
```
[
    "name" => "DocOrderPizzaBot",
    "abortStatement" => [
        "messages" => [
            [
                "content" => "I don't understand. Can you try again?",
                "contentType" => "PlainText"
            ],
            [
                "content" => "I'm sorry, I don't understand.",
                "contentType" => "PlainText"
            ]
        ]
    ],
    "childDirected" => true,
    "clarificationPrompt" => [
        "maxAttempts" => 1,
        "messages" => [
            [
                "content" => "I'm sorry, I didn't hear that. Can you repeate what you just said?",
                "contentType" => "PlainText"
            ],
            [
                "content" => "Can you say that again?",
                "contentType" => "PlainText"
            ]
        ]
    ],
    "description" => "Orders a pizza from a local pizzeria.",
    "idleSessionTTLInSeconds" => 300,
    "intents" => [
        [
            "intentName" => "DocOrderPizza",
            "intentVersion" => "\$LATEST"
        ]
    ],
    "locale" => "en-US",
    "processBehavior" => "SAVE"
]
```

Output:
```
Dict(
    "version" => "\$LATEST",
    "name" => "DocOrderPizzaBot",
    "abortStatement" => Dict(
        "messages" => [
            Dict(
                "content" => "I don't understand. Can you try again?",
                "contentType" => "PlainText"
            ),
            Dict(
                "content" => "I'm sorry, I don't understand.",
                "contentType" => "PlainText"
            )
        ]
    ),
    "checksum" => "20172ee3-fa06-49b2-bbc5-667c090303e9",
    "childDirected" => true,
    "clarificationPrompt" => Dict(
        "maxAttempts" => 1,
        "messages" => [
            Dict(
                "content" => "I'm sorry, I didn't hear that. Can you repeate what you just said?",
                "contentType" => "PlainText"
            ),
            Dict(
                "content" => "Can you say that again?",
                "contentType" => "PlainText"
            )
        ]
    ),
    "createdDate" => 1.494360160133e9,
    "description" => "Orders a pizza from a local pizzeria.",
    "idleSessionTTLInSeconds" => 300,
    "intents" => [
        Dict(
            "intentName" => "DocOrderPizza",
            "intentVersion" => "\$LATEST"
        )
    ],
    "lastUpdatedDate" => 1.494360160133e9,
    "locale" => "en-US",
    "status" => "NOT_BUILT"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/PutBot)
"""

@inline put_bot(aws::AWSConfig=default_aws_config(); args...) = put_bot(aws, args)

@inline put_bot(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "PUT", "/bots/{name}/versions/\$LATEST", args)

@inline put_bot(args) = put_bot(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.put_bot_alias
    put_bot_alias([::AWSConfig], arguments::Dict)
    put_bot_alias([::AWSConfig]; name=, botVersion=, botName=, <keyword arguments>)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "PUT", "/bots/{botName}/aliases/{name}", arguments::Dict)
    lex_models([::AWSConfig], "PUT", "/bots/{botName}/aliases/{name}", name=, botVersion=, botName=, <keyword arguments>)

# PutBotAlias Operation

Creates an alias for the specified version of the bot or replaces an alias for the specified bot. To change the version of the bot that the alias points to, replace the alias. For more information about aliases, see [versioning-aliases](@ref).

This operation requires permissions for the `lex:PutBotAlias` action.

# Arguments

## `name = ::String` -- *Required*
The name of the alias. The name is *not* case sensitive.


## `description = ::String`
A description of the alias.


## `botVersion = ::String` -- *Required*
The version of the bot.


## `botName = ::String` -- *Required*
The name of the bot.


## `checksum = ::String`
Identifies a specific revision of the `\$LATEST` version.

When you create a new bot alias, leave the `checksum` field blank. If you specify a checksum you get a `BadRequestException` exception.

When you want to update a bot alias, set the `checksum` field to the checksum of the most recent revision of the `\$LATEST` version. If you don't specify the `checksum` field, or if the checksum does not match the `\$LATEST` version, you get a `PreconditionFailedException` exception.




# Returns

`PutBotAliasResponse`

# Exceptions

`ConflictException`, `LimitExceededException`, `InternalFailureException`, `BadRequestException` or `PreconditionFailedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/PutBotAlias)
"""

@inline put_bot_alias(aws::AWSConfig=default_aws_config(); args...) = put_bot_alias(aws, args)

@inline put_bot_alias(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "PUT", "/bots/{botName}/aliases/{name}", args)

@inline put_bot_alias(args) = put_bot_alias(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.put_intent
    put_intent([::AWSConfig], arguments::Dict)
    put_intent([::AWSConfig]; name=, <keyword arguments>)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "PUT", "/intents/{name}/versions/\$LATEST", arguments::Dict)
    lex_models([::AWSConfig], "PUT", "/intents/{name}/versions/\$LATEST", name=, <keyword arguments>)

# PutIntent Operation

Creates an intent or replaces an existing intent.

To define the interaction between the user and your bot, you use one or more intents. For a pizza ordering bot, for example, you would create an `OrderPizza` intent.

To create an intent or replace an existing intent, you must provide the following:

*   Intent name. For example, `OrderPizza`.

*   Sample utterances. For example, "Can I order a pizza, please." and "I want to order a pizza."

*   Information to be gathered. You specify slot types for the information that your bot will request from the user. You can specify standard slot types, such as a date or a time, or custom slot types such as the size and crust of a pizza.

*   How the intent will be fulfilled. You can provide a Lambda function or configure the intent to return the intent information to the client application. If you use a Lambda function, when all of the intent information is available, Amazon Lex invokes your Lambda function. If you configure your intent to return the intent information to the client application.

You can specify other optional information in the request, such as:

*   A confirmation prompt to ask the user to confirm an intent. For example, "Shall I order your pizza?"

*   A conclusion statement to send to the user after the intent has been fulfilled. For example, "I placed your pizza order."

*   A follow-up prompt that asks the user for additional activity. For example, asking "Do you want to order a drink with your pizza?"

If you specify an existing intent name to update the intent, Amazon Lex replaces the values in the `\$LATEST` version of the slot type with the values in the request. Amazon Lex removes fields that you don't provide in the request. If you don't specify the required fields, Amazon Lex throws an exception.

For more information, see [how-it-works](@ref).

This operation requires permissions for the `lex:PutIntent` action.

# Arguments

## `name = ::String` -- *Required*
The name of the intent. The name is *not* case sensitive.

The name can't match a built-in intent name, or a built-in intent name with "AMAZON." removed. For example, because there is a built-in intent called `AMAZON.HelpIntent`, you can't create a custom intent called `HelpIntent`.

For a list of built-in intents, see [Standard Built-in Intents](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents) in the *Alexa Skills Kit*.


## `description = ::String`
A description of the intent.


## `slots = [[ ... ], ...]`
An array of intent slots. At runtime, Amazon Lex elicits required slot values from the user using prompts defined in the slots. For more information, see [how-it-works](@ref).
```
 slots = [[
        "name" => <required> ::String,
        "description" =>  ::String,
        "slotConstraint" => <required> "Required" or "Optional",
        "slotType" =>  ::String,
        "slotTypeVersion" =>  ::String,
        "valueElicitationPrompt" =>  [
            "messages" => <required> [[
                "contentType" => <required> "PlainText" or "SSML",
                "content" => <required> ::String
            ], ...],
            "maxAttempts" => <required> ::Int,
            "responseCard" =>  ::String
        ],
        "priority" =>  ::Int,
        "sampleUtterances" =>  [::String, ...],
        "responseCard" =>  ::String
    ], ...]
```

## `sampleUtterances = [::String, ...]`
An array of utterances (strings) that a user might say to signal the intent. For example, "I want {PizzaSize} pizza", "Order {Quantity} {PizzaSize} pizzas".

In each utterance, a slot name is enclosed in curly braces.


## `confirmationPrompt = [ ... ]`
Prompts the user to confirm the intent. This question should have a yes or no answer.

Amazon Lex uses this prompt to ensure that the user acknowledges that the intent is ready for fulfillment. For example, with the `OrderPizza` intent, you might want to confirm that the order is correct before placing it. For other intents, such as intents that simply respond to user questions, you might not need to ask the user for confirmation before providing the information.

**Note**
> You you must provide both the `rejectionStatement` and the `confirmationPrompt`, or neither.
```
 confirmationPrompt = [
        "messages" => <required> [[
            "contentType" => <required> "PlainText" or "SSML",
            "content" => <required> ::String
        ], ...],
        "maxAttempts" => <required> ::Int,
        "responseCard" =>  ::String
    ]
```

## `rejectionStatement = [ ... ]`
When the user answers "no" to the question defined in `confirmationPrompt`, Amazon Lex responds with this statement to acknowledge that the intent was canceled.

**Note**
> You must provide both the `rejectionStatement` and the `confirmationPrompt`, or neither.
```
 rejectionStatement = [
        "messages" => <required> [[
            "contentType" => <required> "PlainText" or "SSML",
            "content" => <required> ::String
        ], ...],
        "responseCard" =>  ::String
    ]
```

## `followUpPrompt = [ ... ]`
Amazon Lex uses this prompt to solicit additional activity after fulfilling an intent. For example, after the `OrderPizza` intent is fulfilled, you might prompt the user to order a drink.

The action that Amazon Lex takes depends on the user's response, as follows:

*   If the user says "Yes" it responds with the clarification prompt that is configured for the bot.

*   if the user says "Yes" and continues with an utterance that triggers an intent it starts a conversation for the intent.

*   If the user says "No" it responds with the rejection statement configured for the the follow-up prompt.

*   If it doesn't recognize the utterance it repeats the follow-up prompt again.

The `followUpPrompt` field and the `conclusionStatement` field are mutually exclusive. You can specify only one.
```
 followUpPrompt = [
        "prompt" => <required> [
            "messages" => <required> [[
                "contentType" => <required> "PlainText" or "SSML",
                "content" => <required> ::String
            ], ...],
            "maxAttempts" => <required> ::Int,
            "responseCard" =>  ::String
        ],
        "rejectionStatement" => <required> [
            "messages" => <required> [[
                "contentType" => <required> "PlainText" or "SSML",
                "content" => <required> ::String
            ], ...],
            "responseCard" =>  ::String
        ]
    ]
```

## `conclusionStatement = [ ... ]`
The statement that you want Amazon Lex to convey to the user after the intent is successfully fulfilled by the Lambda function.

This element is relevant only if you provide a Lambda function in the `fulfillmentActivity`. If you return the intent to the client application, you can't specify this element.

**Note**
> The `followUpPrompt` and `conclusionStatement` are mutually exclusive. You can specify only one.
```
 conclusionStatement = [
        "messages" => <required> [[
            "contentType" => <required> "PlainText" or "SSML",
            "content" => <required> ::String
        ], ...],
        "responseCard" =>  ::String
    ]
```

## `dialogCodeHook = [ ... ]`
Specifies a Lambda function to invoke for each user input. You can invoke this Lambda function to personalize user interaction.

For example, suppose your bot determines that the user is John. Your Lambda function might retrieve John's information from a backend database and prepopulate some of the values. For example, if you find that John is gluten intolerant, you might set the corresponding intent slot, `GlutenIntolerant`, to true. You might find John's phone number and set the corresponding session attribute.
```
 dialogCodeHook = [
        "uri" => <required> ::String,
        "messageVersion" => <required> ::String
    ]
```

## `fulfillmentActivity = [ ... ]`
Required. Describes how the intent is fulfilled. For example, after a user provides all of the information for a pizza order, `fulfillmentActivity` defines how the bot places an order with a local pizza store.

You might configure Amazon Lex to return all of the intent information to the client application, or direct it to invoke a Lambda function that can process the intent (for example, place an order with a pizzeria).
```
 fulfillmentActivity = [
        "type" => <required> "ReturnIntent" or "CodeHook",
        "codeHook" =>  [
            "uri" => <required> ::String,
            "messageVersion" => <required> ::String
        ]
    ]
```

## `parentIntentSignature = ::String`
A unique identifier for the built-in intent to base this intent on. To find the signature for an intent, see [Standard Built-in Intents](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents) in the *Alexa Skills Kit*.


## `checksum = ::String`
Identifies a specific revision of the `\$LATEST` version.

When you create a new intent, leave the `checksum` field blank. If you specify a checksum you get a `BadRequestException` exception.

When you want to update a intent, set the `checksum` field to the checksum of the most recent revision of the `\$LATEST` version. If you don't specify the `checksum` field, or if the checksum does not match the `\$LATEST` version, you get a `PreconditionFailedException` exception.




# Returns

`PutIntentResponse`

# Exceptions

`ConflictException`, `LimitExceededException`, `InternalFailureException`, `BadRequestException` or `PreconditionFailedException`.

# Example: To create an intent

This example shows how to create an intent for ordering pizzas.

Input:
```
[
    "name" => "DocOrderPizza",
    "conclusionStatement" => [
        "messages" => [
            [
                "content" => "All right, I ordered  you a {Crust} crust {Type} pizza with {Sauce} sauce.",
                "contentType" => "PlainText"
            ],
            [
                "content" => "OK, your {Crust} crust {Type} pizza with {Sauce} sauce is on the way.",
                "contentType" => "PlainText"
            ]
        ],
        "responseCard" => "foo"
    ],
    "confirmationPrompt" => [
        "maxAttempts" => 1,
        "messages" => [
            [
                "content" => "Should I order  your {Crust} crust {Type} pizza with {Sauce} sauce?",
                "contentType" => "PlainText"
            ]
        ]
    ],
    "description" => "Order a pizza from a local pizzeria.",
    "fulfillmentActivity" => [
        "type" => "ReturnIntent"
    ],
    "rejectionStatement" => [
        "messages" => [
            [
                "content" => "Ok, I'll cancel your order.",
                "contentType" => "PlainText"
            ],
            [
                "content" => "I cancelled your order.",
                "contentType" => "PlainText"
            ]
        ]
    ],
    "sampleUtterances" => [
        "Order me a pizza.",
        "Order me a {Type} pizza.",
        "I want a {Crust} crust {Type} pizza",
        "I want a {Crust} crust {Type} pizza with {Sauce} sauce."
    ],
    "slots" => [
        [
            "name" => "Type",
            "description" => "The type of pizza to order.",
            "priority" => 1,
            "sampleUtterances" => [
                "Get me a {Type} pizza.",
                "A {Type} pizza please.",
                "I'd like a {Type} pizza."
            ],
            "slotConstraint" => "Required",
            "slotType" => "DocPizzaType",
            "slotTypeVersion" => "\$LATEST",
            "valueElicitationPrompt" => [
                "maxAttempts" => 1,
                "messages" => [
                    [
                        "content" => "What type of pizza would you like?",
                        "contentType" => "PlainText"
                    ],
                    [
                        "content" => "Vegie or cheese pizza?",
                        "contentType" => "PlainText"
                    ],
                    [
                        "content" => "I can get you a vegie or a cheese pizza.",
                        "contentType" => "PlainText"
                    ]
                ]
            ]
        ],
        [
            "name" => "Crust",
            "description" => "The type of pizza crust to order.",
            "priority" => 2,
            "sampleUtterances" => [
                "Make it a {Crust} crust.",
                "I'd like a {Crust} crust."
            ],
            "slotConstraint" => "Required",
            "slotType" => "DocPizzaCrustType",
            "slotTypeVersion" => "\$LATEST",
            "valueElicitationPrompt" => [
                "maxAttempts" => 1,
                "messages" => [
                    [
                        "content" => "What type of crust would you like?",
                        "contentType" => "PlainText"
                    ],
                    [
                        "content" => "Thick or thin crust?",
                        "contentType" => "PlainText"
                    ]
                ]
            ]
        ],
        [
            "name" => "Sauce",
            "description" => "The type of sauce to use on the pizza.",
            "priority" => 3,
            "sampleUtterances" => [
                "Make it {Sauce} sauce.",
                "I'd like {Sauce} sauce."
            ],
            "slotConstraint" => "Required",
            "slotType" => "DocPizzaSauceType",
            "slotTypeVersion" => "\$LATEST",
            "valueElicitationPrompt" => [
                "maxAttempts" => 1,
                "messages" => [
                    [
                        "content" => "White or red sauce?",
                        "contentType" => "PlainText"
                    ],
                    [
                        "content" => "Garlic or tomato sauce?",
                        "contentType" => "PlainText"
                    ]
                ]
            ]
        ]
    ]
]
```

Output:
```
Dict(
    "version" => "\$LATEST",
    "name" => "DocOrderPizza",
    "checksum" => "ca9bc13d-afc8-4706-bbaf-091f7a5935d6",
    "conclusionStatement" => Dict(
        "messages" => [
            Dict(
                "content" => "All right, I ordered  you a {Crust} crust {Type} pizza with {Sauce} sauce.",
                "contentType" => "PlainText"
            ),
            Dict(
                "content" => "OK, your {Crust} crust {Type} pizza with {Sauce} sauce is on the way.",
                "contentType" => "PlainText"
            )
        ],
        "responseCard" => "foo"
    ),
    "confirmationPrompt" => Dict(
        "maxAttempts" => 1,
        "messages" => [
            Dict(
                "content" => "Should I order  your {Crust} crust {Type} pizza with {Sauce} sauce?",
                "contentType" => "PlainText"
            )
        ]
    ),
    "createdDate" => 1.494359783453e9,
    "description" => "Order a pizza from a local pizzeria.",
    "fulfillmentActivity" => Dict(
        "type" => "ReturnIntent"
    ),
    "lastUpdatedDate" => 1.494359783453e9,
    "rejectionStatement" => Dict(
        "messages" => [
            Dict(
                "content" => "Ok, I'll cancel your order.",
                "contentType" => "PlainText"
            ),
            Dict(
                "content" => "I cancelled your order.",
                "contentType" => "PlainText"
            )
        ]
    ),
    "sampleUtterances" => [
        "Order me a pizza.",
        "Order me a {Type} pizza.",
        "I want a {Crust} crust {Type} pizza",
        "I want a {Crust} crust {Type} pizza with {Sauce} sauce."
    ],
    "slots" => [
        Dict(
            "name" => "Sauce",
            "description" => "The type of sauce to use on the pizza.",
            "priority" => 3,
            "sampleUtterances" => [
                "Make it {Sauce} sauce.",
                "I'd like {Sauce} sauce."
            ],
            "slotConstraint" => "Required",
            "slotType" => "DocPizzaSauceType",
            "slotTypeVersion" => "\$LATEST",
            "valueElicitationPrompt" => Dict(
                "maxAttempts" => 1,
                "messages" => [
                    Dict(
                        "content" => "White or red sauce?",
                        "contentType" => "PlainText"
                    ),
                    Dict(
                        "content" => "Garlic or tomato sauce?",
                        "contentType" => "PlainText"
                    )
                ]
            )
        ),
        Dict(
            "name" => "Type",
            "description" => "The type of pizza to order.",
            "priority" => 1,
            "sampleUtterances" => [
                "Get me a {Type} pizza.",
                "A {Type} pizza please.",
                "I'd like a {Type} pizza."
            ],
            "slotConstraint" => "Required",
            "slotType" => "DocPizzaType",
            "slotTypeVersion" => "\$LATEST",
            "valueElicitationPrompt" => Dict(
                "maxAttempts" => 1,
                "messages" => [
                    Dict(
                        "content" => "What type of pizza would you like?",
                        "contentType" => "PlainText"
                    ),
                    Dict(
                        "content" => "Vegie or cheese pizza?",
                        "contentType" => "PlainText"
                    ),
                    Dict(
                        "content" => "I can get you a vegie or a cheese pizza.",
                        "contentType" => "PlainText"
                    )
                ]
            )
        ),
        Dict(
            "name" => "Crust",
            "description" => "The type of pizza crust to order.",
            "priority" => 2,
            "sampleUtterances" => [
                "Make it a {Crust} crust.",
                "I'd like a {Crust} crust."
            ],
            "slotConstraint" => "Required",
            "slotType" => "DocPizzaCrustType",
            "slotTypeVersion" => "\$LATEST",
            "valueElicitationPrompt" => Dict(
                "maxAttempts" => 1,
                "messages" => [
                    Dict(
                        "content" => "What type of crust would you like?",
                        "contentType" => "PlainText"
                    ),
                    Dict(
                        "content" => "Thick or thin crust?",
                        "contentType" => "PlainText"
                    )
                ]
            )
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/PutIntent)
"""

@inline put_intent(aws::AWSConfig=default_aws_config(); args...) = put_intent(aws, args)

@inline put_intent(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "PUT", "/intents/{name}/versions/\$LATEST", args)

@inline put_intent(args) = put_intent(default_aws_config(), args)


"""
    using AWSSDK.LexModelBuildingService.put_slot_type
    put_slot_type([::AWSConfig], arguments::Dict)
    put_slot_type([::AWSConfig]; name=, <keyword arguments>)

    using AWSCore.Services.lex_models
    lex_models([::AWSConfig], "PUT", "/slottypes/{name}/versions/\$LATEST", arguments::Dict)
    lex_models([::AWSConfig], "PUT", "/slottypes/{name}/versions/\$LATEST", name=, <keyword arguments>)

# PutSlotType Operation

Creates a custom slot type or replaces an existing custom slot type.

To create a custom slot type, specify a name for the slot type and a set of enumeration values, which are the values that a slot of this type can assume. For more information, see [how-it-works](@ref).

If you specify the name of an existing slot type, the fields in the request replace the existing values in the `\$LATEST` version of the slot type. Amazon Lex removes the fields that you don't provide in the request. If you don't specify required fields, Amazon Lex throws an exception.

This operation requires permissions for the `lex:PutSlotType` action.

# Arguments

## `name = ::String` -- *Required*
The name of the slot type. The name is *not* case sensitive.

The name can't match a built-in slot type name, or a built-in slot type name with "AMAZON." removed. For example, because there is a built-in slot type called `AMAZON.DATE`, you can't create a custom slot type called `DATE`.

For a list of built-in slot types, see [Slot Type Reference](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference) in the *Alexa Skills Kit*.


## `description = ::String`
A description of the slot type.


## `enumerationValues = [[ ... ], ...]`
A list of `EnumerationValue` objects that defines the values that the slot type can take. Each value can have a list of `synonyms`, which are additional values that help train the machine learning model about the values that it resolves for a slot.

When Amazon Lex resolves a slot value, it generates a resolution list that contains up to five possible values for the slot. If you are using a Lambda function, this resolution list is passed to the function. If you are not using a Lambda function you can choose to return the value that the user entered or the first value in the resolution list as the slot value. The `valueSelectionStrategy` field indicates the option to use.
```
 enumerationValues = [[
        "value" => <required> ::String,
        "synonyms" =>  [::String, ...]
    ], ...]
```

## `checksum = ::String`
Identifies a specific revision of the `\$LATEST` version.

When you create a new slot type, leave the `checksum` field blank. If you specify a checksum you get a `BadRequestException` exception.

When you want to update a slot type, set the `checksum` field to the checksum of the most recent revision of the `\$LATEST` version. If you don't specify the `checksum` field, or if the checksum does not match the `\$LATEST` version, you get a `PreconditionFailedException` exception.


## `valueSelectionStrategy = "ORIGINAL_VALUE" or "TOP_RESOLUTION"`
Determines the slot resolution strategy that Amazon Lex uses to return slot type values. The field can be set to one of the following values:

*   `ORIGINAL_VALUE` - Returns the value entered by the user, if the user value is similar to the slot value.

*   `TOP_RESOLUTION` - If there is a resolution list for the slot, return the first value in the resolution list as the slot type value. If there is no resolution list, null is returned.

If you don't specify the `valueSelectionStrategy`, the default is `ORIGINAL_VALUE`.




# Returns

`PutSlotTypeResponse`

# Exceptions

`ConflictException`, `LimitExceededException`, `InternalFailureException`, `BadRequestException` or `PreconditionFailedException`.

# Example: To Create a Slot Type

This example shows how to create a slot type that describes pizza sauces.

Input:
```
[
    "name" => "PizzaSauceType",
    "description" => "Available pizza sauces",
    "enumerationValues" => [
        [
            "value" => "red"
        ],
        [
            "value" => "white"
        ]
    ]
]
```

Output:
```
Dict(
    "version" => "\$LATEST",
    "name" => "DocPizzaSauceType",
    "checksum" => "cfd00ed1-775d-4357-947c-aca7e73b44ba",
    "createdDate" => 1.49435644223e9,
    "description" => "Available pizza sauces",
    "enumerationValues" => [
        Dict(
            "value" => "red"
        ),
        Dict(
            "value" => "white"
        )
    ],
    "lastUpdatedDate" => 1.49435644223e9
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/PutSlotType)
"""

@inline put_slot_type(aws::AWSConfig=default_aws_config(); args...) = put_slot_type(aws, args)

@inline put_slot_type(aws::AWSConfig, args) = AWSCore.Services.lex_models(aws, "PUT", "/slottypes/{name}/versions/\$LATEST", args)

@inline put_slot_type(args) = put_slot_type(default_aws_config(), args)




end # module LexModelBuildingService


#==============================================================================#
# End of file
#==============================================================================#
