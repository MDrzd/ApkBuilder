.class public interface abstract annotation Lcom/beust/jcommander/Parameter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/beust/jcommander/Parameter;
        arity = -0x1
        converter = Lcom/beust/jcommander/converters/NoConverter;
        description = ""
        descriptionKey = ""
        echoInput = false
        forceNonOverwritable = false
        help = false
        hidden = false
        listConverter = Lcom/beust/jcommander/converters/NoConverter;
        names = {}
        password = false
        required = false
        splitter = Lcom/beust/jcommander/converters/CommaParameterSplitter;
        validateValueWith = Lcom/beust/jcommander/validators/NoValueValidator;
        validateWith = Lcom/beust/jcommander/validators/NoValidator;
        variableArity = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract arity()I
.end method

.method public abstract converter()Ljava/lang/Class;
.end method

.method public abstract description()Ljava/lang/String;
.end method

.method public abstract descriptionKey()Ljava/lang/String;
.end method

.method public abstract echoInput()Z
.end method

.method public abstract forceNonOverwritable()Z
.end method

.method public abstract help()Z
.end method

.method public abstract hidden()Z
.end method

.method public abstract listConverter()Ljava/lang/Class;
.end method

.method public abstract names()[Ljava/lang/String;
.end method

.method public abstract password()Z
.end method

.method public abstract required()Z
.end method

.method public abstract splitter()Ljava/lang/Class;
.end method

.method public abstract validateValueWith()Ljava/lang/Class;
.end method

.method public abstract validateWith()Ljava/lang/Class;
.end method

.method public abstract variableArity()Z
.end method
