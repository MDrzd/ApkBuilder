.class public Lorg/jf/smali/smaliParser$DFA30;
.super Lorg/a/a/g;


# instance fields
.field final synthetic this$0:Lorg/jf/smali/smaliParser;


# direct methods
.method public constructor <init>(Lorg/jf/smali/smaliParser;Lorg/a/a/a;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA30;->this$0:Lorg/jf/smali/smaliParser;

    invoke-direct {p0}, Lorg/a/a/g;-><init>()V

    iput-object p2, p0, Lorg/jf/smali/smaliParser$DFA30;->recognizer:Lorg/a/a/a;

    const/16 p1, 0x1e

    iput p1, p0, Lorg/jf/smali/smaliParser$DFA30;->decisionNumber:I

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA30_eot:[S

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA30;->eot:[S

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA30_eof:[S

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA30;->eof:[S

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA30_min:[C

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA30;->min:[C

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA30_max:[C

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA30;->max:[C

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA30_accept:[S

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA30;->accept:[S

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA30_special:[S

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA30;->special:[S

    sget-object p1, Lorg/jf/smali/smaliParser;->DFA30_transition:[[S

    iput-object p1, p0, Lorg/jf/smali/smaliParser$DFA30;->transition:[[S

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    const-string v0, "695:7: ( member_name COLON nonvoid_type_descriptor -> ^( I_ENCODED_FIELD ( reference_type_descriptor )? member_name nonvoid_type_descriptor ) | member_name method_prototype -> ^( I_ENCODED_METHOD ( reference_type_descriptor )? member_name method_prototype ) )"

    return-object v0
.end method
