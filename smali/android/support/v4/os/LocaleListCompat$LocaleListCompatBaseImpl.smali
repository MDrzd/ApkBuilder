.class Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/os/LocaleListInterface;


# instance fields
.field private mLocaleList:Landroid/support/v4/os/LocaleListHelper;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/os/LocaleListHelper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/Locale;

    invoke-direct {v0, v1}, Landroid/support/v4/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroid/support/v4/os/LocaleListHelper;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroid/support/v4/os/LocaleListHelper;

    check-cast p1, Landroid/support/v4/os/LocaleListCompat;

    invoke-virtual {p1}, Landroid/support/v4/os/LocaleListCompat;->unwrap()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/os/LocaleListHelper;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/util/Locale;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroid/support/v4/os/LocaleListHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/os/LocaleListHelper;->get(I)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroid/support/v4/os/LocaleListHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroid/support/v4/os/LocaleListHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/os/LocaleListHelper;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocaleList()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroid/support/v4/os/LocaleListHelper;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroid/support/v4/os/LocaleListHelper;

    invoke-virtual {v0}, Landroid/support/v4/os/LocaleListHelper;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .registers 3
    .annotation build Landroid/support/annotation/IntRange;
        from = -0x1L
    .end annotation

    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroid/support/v4/os/LocaleListHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/os/LocaleListHelper;->indexOf(Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroid/support/v4/os/LocaleListHelper;

    invoke-virtual {v0}, Landroid/support/v4/os/LocaleListHelper;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public varargs setLocaleList([Ljava/util/Locale;)V
    .registers 3
    .param p1    # [Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/support/v4/os/LocaleListHelper;

    invoke-direct {v0, p1}, Landroid/support/v4/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroid/support/v4/os/LocaleListHelper;

    return-void
.end method

.method public size()I
    .registers 2
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
    .end annotation

    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroid/support/v4/os/LocaleListHelper;

    invoke-virtual {v0}, Landroid/support/v4/os/LocaleListHelper;->size()I

    move-result v0

    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroid/support/v4/os/LocaleListHelper;

    invoke-virtual {v0}, Landroid/support/v4/os/LocaleListHelper;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroid/support/v4/os/LocaleListHelper;

    invoke-virtual {v0}, Landroid/support/v4/os/LocaleListHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
