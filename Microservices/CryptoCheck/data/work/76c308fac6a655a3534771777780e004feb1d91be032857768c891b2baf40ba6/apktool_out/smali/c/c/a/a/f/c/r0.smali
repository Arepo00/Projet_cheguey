.class public final Lc/c/a/a/f/c/r0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lc/c/a/a/c/c;

.field public static final b:Lc/c/a/a/c/c;

.field public static final c:Lc/c/a/a/c/c;

.field public static final d:[Lc/c/a/a/c/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lc/c/a/a/c/c;

    const-string v1, "firebase_auth"

    const-wide/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lc/c/a/a/c/c;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lc/c/a/a/f/c/r0;->a:Lc/c/a/a/c/c;

    new-instance v0, Lc/c/a/a/c/c;

    const-string v1, "firebase_auth_aidl_migration"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lc/c/a/a/c/c;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lc/c/a/a/f/c/r0;->b:Lc/c/a/a/c/c;

    new-instance v0, Lc/c/a/a/c/c;

    const-string v1, "firebase_auth_multi_factor_auth"

    invoke-direct {v0, v1, v2, v3}, Lc/c/a/a/c/c;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lc/c/a/a/f/c/r0;->c:Lc/c/a/a/c/c;

    const/4 v1, 0x3

    new-array v1, v1, [Lc/c/a/a/c/c;

    sget-object v2, Lc/c/a/a/f/c/r0;->a:Lc/c/a/a/c/c;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lc/c/a/a/f/c/r0;->b:Lc/c/a/a/c/c;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lc/c/a/a/f/c/r0;->d:[Lc/c/a/a/c/c;

    return-void
.end method
