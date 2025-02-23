.class public Ljavax/annotation/RegEx$Checker;
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

    check-cast p1, Ljavax/annotation/RegEx;

    invoke-virtual {p0, p1, p2}, Ljavax/annotation/RegEx$Checker;->forConstantValue(Ljavax/annotation/RegEx;Ljava/lang/Object;)Ljavax/annotation/meta/When;

    move-result-object p1

    return-object p1
.end method

.method public forConstantValue(Ljavax/annotation/RegEx;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .registers 3

    instance-of p1, p2, Ljava/lang/String;

    if-nez p1, :cond_0

    sget-object p1, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object p1

    :cond_0
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p1, Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;

    return-object p1

    :catch_0
    sget-object p1, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object p1
.end method
