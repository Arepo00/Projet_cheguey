.class public final Lc/c/b/h/c0/a/x0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/b/h/c0/a/c1;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/c/b/h/c0/a/x0;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(Lc/c/b/h/x;[Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lc/c/b/h/x;->a:Lc/c/a/a/c/m/a;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lc/c/a/a/c/m/a;->a:Ljava/lang/String;

    const-string v1, "Sms auto retrieval timed-out."

    invoke-virtual {p1, v1, p2}, Lc/c/a/a/c/m/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
