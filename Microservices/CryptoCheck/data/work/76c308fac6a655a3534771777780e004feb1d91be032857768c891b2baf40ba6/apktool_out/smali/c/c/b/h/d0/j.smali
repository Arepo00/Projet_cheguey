.class public final Lc/c/b/h/d0/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Lc/c/b/h/d0/j;


# instance fields
.field public final a:Lc/c/b/h/d0/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/b/h/d0/j;

    invoke-direct {v0}, Lc/c/b/h/d0/j;-><init>()V

    sput-object v0, Lc/c/b/h/d0/j;->b:Lc/c/b/h/d0/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lc/c/b/h/d0/n;->b:Lc/c/b/h/d0/n;

    .line 2
    sget-object v1, Lc/c/b/h/d0/g;->a:Lc/c/b/h/d0/g;

    if-nez v1, :cond_0

    new-instance v1, Lc/c/b/h/d0/g;

    invoke-direct {v1}, Lc/c/b/h/d0/g;-><init>()V

    sput-object v1, Lc/c/b/h/d0/g;->a:Lc/c/b/h/d0/g;

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/c/b/h/d0/j;->a:Lc/c/b/h/d0/n;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lc/c/b/h/d0/j;->a:Lc/c/b/h/d0/n;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {p1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "com.google.firebase.auth.internal.ProcessDeathHelper"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1}, Lc/c/b/h/d0/n;->c(Landroid/content/SharedPreferences;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
