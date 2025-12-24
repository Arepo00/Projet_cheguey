.class public final synthetic Lc/c/b/i/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/b/l/a;


# static fields
.field public static final a:Lc/c/b/i/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/b/i/k;

    invoke-direct {v0}, Lc/c/b/i/k;-><init>()V

    sput-object v0, Lc/c/b/i/k;->a:Lc/c/b/i/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
