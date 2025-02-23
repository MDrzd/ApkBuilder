.class Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;


# instance fields
.field private final mValue:C


# direct methods
.method constructor <init>(C)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;->mValue:C

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 3

    iget-char p2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;->mValue:C

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public estimateLength()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
