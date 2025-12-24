.class public final synthetic Lc/c/b/k/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/b/i/g;


# static fields
.field public static final a:Lc/c/b/k/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/b/k/a;

    invoke-direct {v0}, Lc/c/b/k/a;-><init>()V

    sput-object v0, Lc/c/b/k/a;->a:Lc/c/b/k/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/b/i/a;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lc/c/b/k/b;

    const-class v1, Landroid/content/Context;

    invoke-virtual {p1, v1}, Lc/c/b/i/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lc/c/b/k/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
