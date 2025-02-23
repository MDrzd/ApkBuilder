.class final Lcom/google/common/escape/Escapers$1;
.super Lcom/google/common/escape/CharEscaper;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/escape/CharEscaper;-><init>()V

    return-void
.end method


# virtual methods
.method public final escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final escape(C)[C
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method
