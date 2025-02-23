.class public Ljavax/annotation/Nonnull$Checker;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/annotation/meta/TypeQualifierValidator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .registers 3

    check-cast p1, Ljavax/annotation/Nonnull;

    invoke-virtual {p0, p1, p2}, Ljavax/annotation/Nonnull$Checker;->forConstantValue(Ljavax/annotation/Nonnull;Ljava/lang/Object;)Ljavax/annotation/meta/When;

    move-result-object p1

    return-object p1
.end method

.method public forConstantValue(Ljavax/annotation/Nonnull;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .registers 3

    if-nez p2, :cond_0

    sget-object p1, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object p1

    :cond_0
    sget-object p1, Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;

    return-object p1
.end method
