.class public Lorg/jf/smali/smaliParser$DFA38;
.super Lorg/a/a/g;


# instance fields
.field final synthetic this$0:Lorg/jf/smali/smaliParser;


# direct methods
.method public constructor <init>(Lorg/jf/smali/smaliParser;Lorg/a/a/a;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA38;->this$0:Lorg/jf/smali/smaliParser;

    invoke-direct {p0}, Lorg/a/a/g;-><init>()V

    iput-object p2, p0, Lorg/jf/smali/smaliParser$DFA38;->recognizer:Lorg/a/a/a;

    const/16 p1, 0x26

    iput p1, p0, Lorg/jf/smali/smaliParser$DFA38;->decisionNumber:I

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA38_eot:[S

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA38;->eot:[S

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA38_eof:[S

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA38;->eof:[S

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA38_min:[C

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA38;->min:[C

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA38_max:[C

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA38;->max:[C

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA38_accept:[S

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA38;->accept:[S

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA38_special:[S

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA38;->special:[S

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA38_transition:[[S

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA38;->transition:[[S

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    const-string v0, "723:1: verification_error_reference : ( CLASS_DESCRIPTOR | field_reference | method_reference );"

    return-object v0
.end method
