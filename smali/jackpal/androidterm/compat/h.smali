.class public final Ljackpal/androidterm/compat/h;
.super Ljava/lang/Object;


# static fields
.field private static a:[Ljava/lang/Class;

.field private static b:[Ljava/lang/Class;

.field private static c:[Ljava/lang/Class;


# instance fields
.field private d:Landroid/app/Service;

.field private e:Landroid/app/NotificationManager;

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/reflect/Method;

.field private h:Ljava/lang/reflect/Method;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Ljackpal/androidterm/compat/h;->a:[Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    const-class v2, Landroid/app/Notification;

    aput-object v2, v1, v0

    sput-object v1, Ljackpal/androidterm/compat/h;->b:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sput-object v0, Ljackpal/androidterm/compat/h;->c:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljackpal/androidterm/compat/h;->d:Landroid/app/Service;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Ljackpal/androidterm/compat/h;->e:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "startForeground"

    sget-object v2, Ljackpal/androidterm/compat/h;->b:[Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Ljackpal/androidterm/compat/h;->g:Ljava/lang/reflect/Method;

    const-string v1, "stopForeground"

    sget-object v2, Ljackpal/androidterm/compat/h;->c:[Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Ljackpal/androidterm/compat/h;->h:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v0, p0, Ljackpal/androidterm/compat/h;->h:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljackpal/androidterm/compat/h;->g:Ljava/lang/reflect/Method;

    :goto_0
    :try_start_1
    const-string v1, "setForeground"

    sget-object v2, Ljackpal/androidterm/compat/h;->a:[Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Ljackpal/androidterm/compat/h;->f:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-object v0, p0, Ljackpal/androidterm/compat/h;->f:Ljava/lang/reflect/Method;

    :goto_1
    iget-object p1, p0, Ljackpal/androidterm/compat/h;->g:Ljava/lang/reflect/Method;

    if-nez p1, :cond_1

    iget-object p1, p0, Ljackpal/androidterm/compat/h;->f:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Neither startForeground() or setForeground() present!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method private static varargs a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 3

    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "ServiceCompat"

    const-string p2, "Method threw exception"

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    :goto_0
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception p0

    const-string p1, "ServiceCompat"

    const-string p2, "Unable to invoke method"

    goto :goto_0
.end method


# virtual methods
.method public final a(ILandroid/app/Notification;)V
    .registers 8

    iget-object p1, p0, Ljackpal/androidterm/compat/h;->g:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljackpal/androidterm/compat/h;->d:Landroid/app/Service;

    iget-object v2, p0, Ljackpal/androidterm/compat/h;->g:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    aput-object p2, v3, v1

    invoke-static {p1, v2, v3}, Ljackpal/androidterm/compat/h;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Ljackpal/androidterm/compat/h;->d:Landroid/app/Service;

    iget-object v2, p0, Ljackpal/androidterm/compat/h;->f:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    invoke-static {p1, v2, v3}, Ljackpal/androidterm/compat/h;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    iget-object p1, p0, Ljackpal/androidterm/compat/h;->e:Landroid/app/NotificationManager;

    invoke-virtual {p1, v1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iput v1, p0, Ljackpal/androidterm/compat/h;->i:I

    return-void
.end method

.method public final a(Z)V
    .registers 6

    iget-object p1, p0, Ljackpal/androidterm/compat/h;->h:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljackpal/androidterm/compat/h;->d:Landroid/app/Service;

    iget-object v2, p0, Ljackpal/androidterm/compat/h;->h:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v0

    :goto_0
    invoke-static {p1, v2, v1}, Ljackpal/androidterm/compat/h;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Ljackpal/androidterm/compat/h;->e:Landroid/app/NotificationManager;

    iget v2, p0, Ljackpal/androidterm/compat/h;->i:I

    invoke-virtual {p1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object p1, p0, Ljackpal/androidterm/compat/h;->d:Landroid/app/Service;

    iget-object v2, p0, Ljackpal/androidterm/compat/h;->f:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v0

    goto :goto_0
.end method
