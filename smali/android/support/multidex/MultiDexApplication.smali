.class public Landroid/support/multidex/MultiDexApplication;
.super Landroid/app/Application;


# static fields
.field private static mApplicationContext:Landroid/support/multidex/MultiDexApplication;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/support/multidex/MultiDexApplication;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Landroid/support/multidex/MultiDexApplication;->mApplicationContext:Landroid/support/multidex/MultiDexApplication;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .registers 2

    .prologue
    sput-object p0, Landroid/support/multidex/MultiDexApplication;->mApplicationContext:Landroid/support/multidex/MultiDexApplication;

    .line 35
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 36
    return-void
.end method
