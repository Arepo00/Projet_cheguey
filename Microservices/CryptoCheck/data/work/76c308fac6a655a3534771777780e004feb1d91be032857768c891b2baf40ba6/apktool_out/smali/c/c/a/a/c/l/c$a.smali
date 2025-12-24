.class public final Lc/c/a/a/c/l/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/c/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/accounts/Account;

.field public b:Lb/f/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/c<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lc/c/a/a/g/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/c/a/a/c/l/c$a;->c:I

    sget-object v0, Lc/c/a/a/g/a;->k:Lc/c/a/a/g/a;

    iput-object v0, p0, Lc/c/a/a/c/l/c$a;->f:Lc/c/a/a/g/a;

    return-void
.end method


# virtual methods
.method public final a()Lc/c/a/a/c/l/c;
    .locals 11

    new-instance v10, Lc/c/a/a/c/l/c;

    iget-object v1, p0, Lc/c/a/a/c/l/c$a;->a:Landroid/accounts/Account;

    iget-object v2, p0, Lc/c/a/a/c/l/c$a;->b:Lb/f/c;

    iget v4, p0, Lc/c/a/a/c/l/c$a;->c:I

    iget-object v6, p0, Lc/c/a/a/c/l/c$a;->d:Ljava/lang/String;

    iget-object v7, p0, Lc/c/a/a/c/l/c$a;->e:Ljava/lang/String;

    iget-object v8, p0, Lc/c/a/a/c/l/c$a;->f:Lc/c/a/a/g/a;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lc/c/a/a/c/l/c;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lc/c/a/a/g/a;Z)V

    return-object v10
.end method
