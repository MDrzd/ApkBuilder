.class public Lorg/jf/smali/smaliParser$DFA40;
.super Lorg/a/a/g;


# instance fields
.field final synthetic this$0:Lorg/jf/smali/smaliParser;


# direct methods
.method public constructor <init>(Lorg/jf/smali/smaliParser;Lorg/a/a/a;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA40;->this$0:Lorg/jf/smali/smaliParser;

    invoke-direct {p0}, Lorg/a/a/g;-><init>()V

    iput-object p2, p0, Lorg/jf/smali/smaliParser$DFA40;->recognizer:Lorg/a/a/a;

    const/16 p1, 0x28

    iput p1, p0, Lorg/jf/smali/smaliParser$DFA40;->decisionNumber:I

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA40_eot:[S

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA40;->eot:[S

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA40_eof:[S

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA40;->eof:[S

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA40_min:[C

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA40;->min:[C

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA40_max:[C

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA40;->max:[C

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA40_accept:[S

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA40;->accept:[S

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA40_special:[S

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA40;->special:[S

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA40_transition:[[S

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA40;->transition:[[S

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    const-string v0, "()* loopback of 741:5: ({...}? annotation )*"

    return-object v0
.end method

.method public specialStateTransition(ILorg/a/a/j;)I
    .registers 6

    check-cast p2, Lorg/a/a/z;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    invoke-interface {p2, p1}, Lorg/a/a/z;->e(I)I

    invoke-interface {p2}, Lorg/a/a/z;->a()I

    move-result v0

    invoke-interface {p2}, Lorg/a/a/z;->c()V

    invoke-interface {p2, p1}, Lorg/a/a/z;->e(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/16 p1, 0x42

    :cond_0
    invoke-interface {p2, v0}, Lorg/a/a/z;->b(I)V

    return p1

    :cond_1
    new-instance v0, Lorg/a/a/r;

    invoke-virtual {p0}, Lorg/jf/smali/smaliParser$DFA40;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/a/a/r;-><init>(Ljava/lang/String;IILorg/a/a/j;)V

    invoke-virtual {p0, v0}, Lorg/jf/smali/smaliParser$DFA40;->error(Lorg/a/a/r;)V

    throw v0
.end method
