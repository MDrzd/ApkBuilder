.class public final Lb/b/b/b/d;
.super Ljava/lang/Object;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/util/List;

.field private H:Z

.field private I:Z

.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:[Ljava/lang/String;

.field public o:Z

.field public p:Z

.field public q:Lcom/gmail/heagoo/httpserver/g;

.field public r:Lcom/gmail/heagoo/b/a/a;

.field public s:I

.field public t:Z

.field public u:Ljava/lang/String;

.field public v:Z

.field public w:I

.field private x:Lb/b/b/b/a;

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lb/b/b/b/a;

    invoke-direct {v0}, Lb/b/b/b/a;-><init>()V

    invoke-direct {p0, v0}, Lb/b/b/b/d;-><init>(Lb/b/b/b/a;)V

    return-void
.end method

.method public constructor <init>(Lb/b/b/b/a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/b/b/d;->a:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/b/b/b/d;->y:Z

    iput-boolean v0, p0, Lb/b/b/b/d;->b:Z

    iput-boolean v0, p0, Lb/b/b/b/d;->c:Z

    iput-boolean v0, p0, Lb/b/b/b/d;->d:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lb/b/b/b/d;->e:Ljava/lang/String;

    iput v0, p0, Lb/b/b/b/d;->f:I

    iput-object v2, p0, Lb/b/b/b/d;->g:Ljava/lang/String;

    iput-object v2, p0, Lb/b/b/b/d;->h:Ljava/lang/String;

    iput-boolean v1, p0, Lb/b/b/b/d;->i:Z

    iput-boolean v0, p0, Lb/b/b/b/d;->j:Z

    iput-boolean v0, p0, Lb/b/b/b/d;->k:Z

    iput-boolean v0, p0, Lb/b/b/b/d;->l:Z

    const/16 v3, 0xd

    iput v3, p0, Lb/b/b/b/d;->z:I

    const/4 v3, 0x2

    iput v3, p0, Lb/b/b/b/d;->A:I

    iput-boolean v1, p0, Lb/b/b/b/d;->B:Z

    iput-boolean v0, p0, Lb/b/b/b/d;->m:Z

    iput-boolean v0, p0, Lb/b/b/b/d;->C:Z

    iput-boolean v0, p0, Lb/b/b/b/d;->D:Z

    iput-boolean v1, p0, Lb/b/b/b/d;->o:Z

    iput-object v2, p0, Lb/b/b/b/d;->E:Ljava/lang/String;

    iput-object v2, p0, Lb/b/b/b/d;->F:Ljava/lang/String;

    iput v1, p0, Lb/b/b/b/d;->s:I

    iput-boolean v0, p0, Lb/b/b/b/d;->t:Z

    iput-object v2, p0, Lb/b/b/b/d;->u:Ljava/lang/String;

    iput-boolean v0, p0, Lb/b/b/b/d;->v:Z

    const/high16 v1, 0x10000

    iput v1, p0, Lb/b/b/b/d;->w:I

    iput-object v2, p0, Lb/b/b/b/d;->G:Ljava/util/List;

    iput-boolean v0, p0, Lb/b/b/b/d;->H:Z

    iput-boolean v0, p0, Lb/b/b/b/d;->I:Z

    iput-object p1, p0, Lb/b/b/b/d;->x:Lb/b/b/b/a;

    return-void
.end method

.method static synthetic a(Lb/b/b/b/d;[Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lb/b/b/b/e;

    invoke-direct {v0, p1}, Lb/b/b/b/e;-><init>([Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lb/b/b/b/e;->c()Z

    move-result p1

    if-eqz p1, :cond_26

    const-string p1, "--debug"

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lb/b/b/b/d;->a:Z

    goto :goto_0

    :cond_0
    const-string p1, "--no-warning"

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iput-boolean v2, p0, Lb/b/b/b/d;->y:Z

    goto :goto_0

    :cond_1
    const-string p1, "--verbose"

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lb/b/b/b/d;->b:Z

    goto :goto_0

    :cond_2
    const-string p1, "--verbose-dump"

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lb/b/b/b/d;->c:Z

    goto :goto_0

    :cond_3
    const-string p1, "--no-files"

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iput-boolean v1, p0, Lb/b/b/b/d;->j:Z

    goto :goto_0

    :cond_4
    const-string p1, "--no-optimize"

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v2, p0, Lb/b/b/b/d;->o:Z

    goto :goto_0

    :cond_5
    const-string p1, "--no-strict"

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput-boolean v2, p0, Lb/b/b/b/d;->i:Z

    goto :goto_0

    :cond_6
    const-string p1, "--core-library"

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean v1, p0, Lb/b/b/b/d;->d:Z

    goto :goto_0

    :cond_7
    const-string p1, "--statistics"

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iput-boolean v1, p0, Lb/b/b/b/d;->p:Z

    goto :goto_0

    :cond_8
    const-string p1, "--optimize-list="

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lb/b/b/b/d;->F:Ljava/lang/String;

    if-nez p1, :cond_9

    iput-boolean v1, p0, Lb/b/b/b/d;->o:Z

    invoke-virtual {v0}, Lb/b/b/b/e;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/b/b/b/d;->E:Ljava/lang/String;

    goto :goto_0

    :cond_9
    iget-object p0, p0, Lb/b/b/b/d;->x:Lb/b/b/b/a;

    iget-object p0, p0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    const-string p1, "--optimize-list and --no-optimize-list are incompatible."

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Lb/b/b/a;

    invoke-direct {p0}, Lb/b/b/a;-><init>()V

    throw p0

    :cond_a
    const-string p1, "--no-optimize-list="

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lb/b/b/b/d;->F:Ljava/lang/String;

    if-nez p1, :cond_b

    iput-boolean v1, p0, Lb/b/b/b/d;->o:Z

    invoke-virtual {v0}, Lb/b/b/b/e;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/b/b/b/d;->F:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    iget-object p0, p0, Lb/b/b/b/d;->x:Lb/b/b/b/a;

    iget-object p0, p0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    const-string p1, "--optimize-list and --no-optimize-list are incompatible."

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Lb/b/b/a;

    invoke-direct {p0}, Lb/b/b/a;-><init>()V

    throw p0

    :cond_c
    const-string p1, "--keep-classes"

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    iput-boolean v1, p0, Lb/b/b/b/d;->l:Z

    goto/16 :goto_0

    :cond_d
    const-string p1, "--output="

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {v0}, Lb/b/b/b/e;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/b/b/b/d;->g:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object v3, p0, Lb/b/b/b/d;->g:Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_e

    iput-boolean v2, p0, Lb/b/b/b/d;->k:Z

    iput-boolean v1, p0, Lb/b/b/b/d;->H:Z

    goto/16 :goto_0

    :cond_e
    iget-object p1, p0, Lb/b/b/b/d;->g:Ljava/lang/String;

    invoke-static {p1}, La/a/a;->f(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    iput-boolean v1, p0, Lb/b/b/b/d;->k:Z

    goto/16 :goto_0

    :cond_f
    iget-object p1, p0, Lb/b/b/b/d;->g:Ljava/lang/String;

    const-string v3, ".dex"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lb/b/b/b/d;->g:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_1

    :cond_10
    iget-object p1, p0, Lb/b/b/b/d;->x:Lb/b/b/b/a;

    iget-object p1, p1, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown output extension: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lb/b/b/b/d;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Lb/b/b/a;

    invoke-direct {p0}, Lb/b/b/a;-><init>()V

    throw p0

    :cond_11
    :goto_1
    iput-boolean v2, p0, Lb/b/b/b/d;->k:Z

    iput-boolean v1, p0, Lb/b/b/b/d;->I:Z

    goto/16 :goto_0

    :cond_12
    const-string p1, "--dump-to="

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {v0}, Lb/b/b/b/e;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/b/b/b/d;->h:Ljava/lang/String;

    goto/16 :goto_0

    :cond_13
    const-string p1, "--dump-width="

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {v0}, Lb/b/b/b/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lb/b/b/b/d;->f:I

    goto/16 :goto_0

    :cond_14
    const-string p1, "--dump-method="

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {v0}, Lb/b/b/b/e;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/b/b/b/d;->e:Ljava/lang/String;

    iput-boolean v2, p0, Lb/b/b/b/d;->k:Z

    goto/16 :goto_0

    :cond_15
    const-string p1, "--positions="

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-virtual {v0}, Lb/b/b/b/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    const-string v2, "none"

    if-ne p1, v2, :cond_16

    iput v1, p0, Lb/b/b/b/d;->A:I

    goto/16 :goto_0

    :cond_16
    const-string v1, "important"

    if-ne p1, v1, :cond_17

    const/4 p1, 0x3

    :goto_2
    iput p1, p0, Lb/b/b/b/d;->A:I

    goto/16 :goto_0

    :cond_17
    const-string v1, "lines"

    if-ne p1, v1, :cond_18

    const/4 p1, 0x2

    goto :goto_2

    :cond_18
    iget-object p0, p0, Lb/b/b/b/d;->x:Lb/b/b/b/a;

    iget-object p0, p0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown positions option: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Lb/b/b/a;

    invoke-direct {p0}, Lb/b/b/a;-><init>()V

    throw p0

    :cond_19
    const-string p1, "--no-locals"

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iput-boolean v2, p0, Lb/b/b/b/d;->B:Z

    goto/16 :goto_0

    :cond_1a
    const-string p1, "--num-threads="

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {v0}, Lb/b/b/b/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lb/b/b/b/d;->s:I

    goto/16 :goto_0

    :cond_1b
    const-string p1, "--incremental"

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iput-boolean v1, p0, Lb/b/b/b/d;->m:Z

    goto/16 :goto_0

    :cond_1c
    const-string p1, "--force-jumbo"

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iput-boolean v1, p0, Lb/b/b/b/d;->C:Z

    goto/16 :goto_0

    :cond_1d
    const-string p1, "--multi-dex"

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iput-boolean v1, p0, Lb/b/b/b/d;->t:Z

    goto/16 :goto_0

    :cond_1e
    const-string p1, "--main-dex-list="

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-virtual {v0}, Lb/b/b/b/e;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/b/b/b/d;->u:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1f
    const-string p1, "--minimal-main-dex"

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    iput-boolean v1, p0, Lb/b/b/b/d;->v:Z

    goto/16 :goto_0

    :cond_20
    const-string p1, "--set-max-idx-number="

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-virtual {v0}, Lb/b/b/b/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lb/b/b/b/d;->w:I

    goto/16 :goto_0

    :cond_21
    const-string p1, "--input-list="

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    new-instance p1, Ljava/io/File;

    invoke-virtual {v0}, Lb/b/b/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/b/b/b/d;->G:Ljava/util/List;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lb/b/b/b/d;->G:Ljava/util/List;

    invoke-static {v1, v2}, Lb/b/b/b/c;->a(Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    iget-object p0, p0, Lb/b/b/b/d;->x:Lb/b/b/b/a;

    iget-object p0, p0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to read input list file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Lb/b/b/a;

    invoke-direct {p0}, Lb/b/b/a;-><init>()V

    throw p0

    :cond_22
    const-string p1, "--min-sdk-version="

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-virtual {v0}, Lb/b/b/b/e;->b()Ljava/lang/String;

    move-result-object p1

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const/4 v1, -0x1

    :goto_3
    if-lez v1, :cond_23

    iput v1, p0, Lb/b/b/b/d;->z:I

    goto/16 :goto_0

    :cond_23
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "improper min-sdk-version option: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Lb/b/b/a;

    invoke-direct {p0}, Lb/b/b/a;-><init>()V

    throw p0

    :cond_24
    const-string p1, "--allow-all-interface-method-invokes"

    invoke-virtual {v0, p1}, Lb/b/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    iput-boolean v1, p0, Lb/b/b/b/d;->D:Z

    goto/16 :goto_0

    :cond_25
    iget-object p0, p0, Lb/b/b/b/d;->x:Lb/b/b/b/a;

    iget-object p0, p0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "unknown option: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/b/b/b/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Lb/b/b/a;

    invoke-direct {p0}, Lb/b/b/a;-><init>()V

    throw p0

    :cond_26
    invoke-virtual {v0}, Lb/b/b/b/e;->d()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/b/b/b/d;->n:[Ljava/lang/String;

    iget-object p1, p0, Lb/b/b/b/d;->G:Ljava/util/List;

    if-eqz p1, :cond_27

    iget-object p1, p0, Lb/b/b/b/d;->G:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_27

    iget-object p1, p0, Lb/b/b/b/d;->G:Ljava/util/List;

    iget-object v0, p0, Lb/b/b/b/d;->n:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lb/b/b/b/d;->G:Ljava/util/List;

    iget-object v0, p0, Lb/b/b/b/d;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lb/b/b/b/d;->n:[Ljava/lang/String;

    :cond_27
    iget-object p1, p0, Lb/b/b/b/d;->n:[Ljava/lang/String;

    array-length p1, p1

    if-nez p1, :cond_29

    iget-boolean p1, p0, Lb/b/b/b/d;->j:Z

    if-eqz p1, :cond_28

    goto :goto_4

    :cond_28
    iget-object p0, p0, Lb/b/b/b/d;->x:Lb/b/b/b/a;

    iget-object p0, p0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    const-string p1, "no input files specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Lb/b/b/a;

    invoke-direct {p0}, Lb/b/b/a;-><init>()V

    throw p0

    :cond_29
    iget-boolean p1, p0, Lb/b/b/b/d;->j:Z

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lb/b/b/b/d;->x:Lb/b/b/b/a;

    iget-object p1, p1, Lb/b/b/b/a;->c:Ljava/io/PrintStream;

    const-string v0, "ignoring input files"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2a
    :goto_4
    iget-object p1, p0, Lb/b/b/b/d;->h:Ljava/lang/String;

    if-nez p1, :cond_2b

    iget-object p1, p0, Lb/b/b/b/d;->e:Ljava/lang/String;

    if-eqz p1, :cond_2b

    const-string p1, "-"

    iput-object p1, p0, Lb/b/b/b/d;->h:Ljava/lang/String;

    :cond_2b
    iget-object p1, p0, Lb/b/b/b/d;->u:Ljava/lang/String;

    if-eqz p1, :cond_2d

    iget-boolean p1, p0, Lb/b/b/b/d;->t:Z

    if-eqz p1, :cond_2c

    goto :goto_5

    :cond_2c
    iget-object p0, p0, Lb/b/b/b/d;->x:Lb/b/b/b/a;

    iget-object p0, p0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    const-string p1, "--main-dex-list is only supported in combination with --multi-dex"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Lb/b/b/a;

    invoke-direct {p0}, Lb/b/b/a;-><init>()V

    throw p0

    :cond_2d
    :goto_5
    iget-boolean p1, p0, Lb/b/b/b/d;->v:Z

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lb/b/b/b/d;->u:Ljava/lang/String;

    if-eqz p1, :cond_2e

    iget-boolean p1, p0, Lb/b/b/b/d;->t:Z

    if-eqz p1, :cond_2e

    goto :goto_6

    :cond_2e
    iget-object p0, p0, Lb/b/b/b/d;->x:Lb/b/b/b/a;

    iget-object p0, p0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    const-string p1, "--minimal-main-dex is only supported in combination with --multi-dex and --main-dex-list"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Lb/b/b/a;

    invoke-direct {p0}, Lb/b/b/a;-><init>()V

    throw p0

    :cond_2f
    :goto_6
    iget-boolean p1, p0, Lb/b/b/b/d;->t:Z

    if-eqz p1, :cond_31

    iget-boolean p1, p0, Lb/b/b/b/d;->m:Z

    if-nez p1, :cond_30

    goto :goto_7

    :cond_30
    iget-object p0, p0, Lb/b/b/b/d;->x:Lb/b/b/b/a;

    iget-object p0, p0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    const-string p1, "--incremental is not supported with --multi-dex"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Lb/b/b/a;

    invoke-direct {p0}, Lb/b/b/a;-><init>()V

    throw p0

    :cond_31
    :goto_7
    iget-boolean p1, p0, Lb/b/b/b/d;->t:Z

    if-eqz p1, :cond_33

    iget-boolean p1, p0, Lb/b/b/b/d;->I:Z

    if-nez p1, :cond_32

    goto :goto_8

    :cond_32
    iget-object p1, p0, Lb/b/b/b/d;->x:Lb/b/b/b/a;

    iget-object p1, p1, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported output \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lb/b/b/b/d;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\". --multi-dex"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " supports only archive or directory output"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Lb/b/b/a;

    invoke-direct {p0}, Lb/b/b/a;-><init>()V

    throw p0

    :cond_33
    :goto_8
    iget-boolean p1, p0, Lb/b/b/b/d;->H:Z

    if-eqz p1, :cond_34

    iget-boolean p1, p0, Lb/b/b/b/d;->t:Z

    if-nez p1, :cond_34

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lb/b/b/b/d;->g:Ljava/lang/String;

    const-string v1, "classes.dex"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/b/b/b/d;->g:Ljava/lang/String;

    :cond_34
    invoke-virtual {p0}, Lb/b/b/b/d;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    new-instance v0, Lcom/gmail/heagoo/httpserver/g;

    invoke-direct {v0}, Lcom/gmail/heagoo/httpserver/g;-><init>()V

    iput-object v0, p0, Lb/b/b/b/d;->q:Lcom/gmail/heagoo/httpserver/g;

    iget-object v0, p0, Lb/b/b/b/d;->q:Lcom/gmail/heagoo/httpserver/g;

    iget v1, p0, Lb/b/b/b/d;->A:I

    iput v1, v0, Lcom/gmail/heagoo/httpserver/g;->a:I

    iget-object v0, p0, Lb/b/b/b/d;->q:Lcom/gmail/heagoo/httpserver/g;

    iget-boolean v1, p0, Lb/b/b/b/d;->B:Z

    iput-boolean v1, v0, Lcom/gmail/heagoo/httpserver/g;->b:Z

    iget-object v0, p0, Lb/b/b/b/d;->q:Lcom/gmail/heagoo/httpserver/g;

    iget-boolean v1, p0, Lb/b/b/b/d;->i:Z

    iput-boolean v1, v0, Lcom/gmail/heagoo/httpserver/g;->c:Z

    iget-object v0, p0, Lb/b/b/b/d;->q:Lcom/gmail/heagoo/httpserver/g;

    iget-boolean v1, p0, Lb/b/b/b/d;->o:Z

    iput-boolean v1, v0, Lcom/gmail/heagoo/httpserver/g;->d:Z

    iget-object v0, p0, Lb/b/b/b/d;->q:Lcom/gmail/heagoo/httpserver/g;

    iget-object v1, p0, Lb/b/b/b/d;->E:Ljava/lang/String;

    iput-object v1, v0, Lcom/gmail/heagoo/httpserver/g;->e:Ljava/lang/String;

    iget-object v0, p0, Lb/b/b/b/d;->q:Lcom/gmail/heagoo/httpserver/g;

    iget-object v1, p0, Lb/b/b/b/d;->F:Ljava/lang/String;

    iput-object v1, v0, Lcom/gmail/heagoo/httpserver/g;->f:Ljava/lang/String;

    iget-object v0, p0, Lb/b/b/b/d;->q:Lcom/gmail/heagoo/httpserver/g;

    iget-boolean v1, p0, Lb/b/b/b/d;->p:Z

    iput-boolean v1, v0, Lcom/gmail/heagoo/httpserver/g;->g:Z

    iget-boolean v0, p0, Lb/b/b/b/d;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/b/b/d;->q:Lcom/gmail/heagoo/httpserver/g;

    iget-object v1, p0, Lb/b/b/b/d;->x:Lb/b/b/b/a;

    iget-object v1, v1, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    :goto_0
    iput-object v1, v0, Lcom/gmail/heagoo/httpserver/g;->h:Ljava/io/PrintStream;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lb/b/b/b/d;->q:Lcom/gmail/heagoo/httpserver/g;

    iget-object v1, p0, Lb/b/b/b/d;->x:Lb/b/b/b/a;

    iget-object v1, v1, Lb/b/b/b/a;->e:Ljava/io/PrintStream;

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/gmail/heagoo/b/a/a;

    iget-object v1, p0, Lb/b/b/b/d;->x:Lb/b/b/b/a;

    iget-object v1, v1, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lcom/gmail/heagoo/b/a/a;-><init>(Ljava/io/PrintStream;)V

    iput-object v0, p0, Lb/b/b/b/d;->r:Lcom/gmail/heagoo/b/a/a;

    iget-object v0, p0, Lb/b/b/b/d;->r:Lcom/gmail/heagoo/b/a/a;

    iget v1, p0, Lb/b/b/b/d;->z:I

    iput v1, v0, Lcom/gmail/heagoo/b/a/a;->b:I

    iget-object v0, p0, Lb/b/b/b/d;->r:Lcom/gmail/heagoo/b/a/a;

    iget-boolean v1, p0, Lb/b/b/b/d;->C:Z

    iput-boolean v1, v0, Lcom/gmail/heagoo/b/a/a;->c:Z

    iget-object v0, p0, Lb/b/b/b/d;->r:Lcom/gmail/heagoo/b/a/a;

    iget-boolean v1, p0, Lb/b/b/b/d;->D:Z

    iput-boolean v1, v0, Lcom/gmail/heagoo/b/a/a;->d:Z

    return-void
.end method
