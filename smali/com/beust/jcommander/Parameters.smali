.class public interface abstract annotation Lcom/beust/jcommander/Parameters;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/beust/jcommander/Parameters;
        commandDescription = ""
        commandDescriptionKey = ""
        commandNames = {}
        hidden = false
        optionPrefixes = "-"
        resourceBundle = ""
        separators = " "
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Inherited;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final DEFAULT_OPTION_PREFIXES:Ljava/lang/String; = "-"


# virtual methods
.method public abstract commandDescription()Ljava/lang/String;
.end method

.method public abstract commandDescriptionKey()Ljava/lang/String;
.end method

.method public abstract commandNames()[Ljava/lang/String;
.end method

.method public abstract hidden()Z
.end method

.method public abstract optionPrefixes()Ljava/lang/String;
.end method

.method public abstract resourceBundle()Ljava/lang/String;
.end method

.method public abstract separators()Ljava/lang/String;
.end method
