.class public interface abstract annotation Lorg/jf/util/jcommander/ExtendedParameters;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/jf/util/jcommander/ExtendedParameters;
        commandAliases = {}
        includeParametersInUsage = false
        postfixDescription = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract commandAliases()[Ljava/lang/String;
.end method

.method public abstract commandName()Ljava/lang/String;
.end method

.method public abstract includeParametersInUsage()Z
.end method

.method public abstract postfixDescription()Ljava/lang/String;
.end method
