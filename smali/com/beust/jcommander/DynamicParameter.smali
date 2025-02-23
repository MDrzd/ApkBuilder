.class public interface abstract annotation Lcom/beust/jcommander/DynamicParameter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/beust/jcommander/DynamicParameter;
        assignment = "="
        description = ""
        descriptionKey = ""
        hidden = false
        names = {}
        required = false
        validateValueWith = Lcom/beust/jcommander/validators/NoValueValidator;
        validateWith = Lcom/beust/jcommander/validators/NoValidator;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract assignment()Ljava/lang/String;
.end method

.method public abstract description()Ljava/lang/String;
.end method

.method public abstract descriptionKey()Ljava/lang/String;
.end method

.method public abstract hidden()Z
.end method

.method public abstract names()[Ljava/lang/String;
.end method

.method public abstract required()Z
.end method

.method public abstract validateValueWith()Ljava/lang/Class;
.end method

.method public abstract validateWith()Ljava/lang/Class;
.end method
