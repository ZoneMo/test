.class public final Lcom/tencent/mm/c/a/u;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bMi:Lcom/tencent/mm/c/a/v;

.field public bMj:Lcom/tencent/mm/c/a/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/u;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/u;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/v;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/v;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/u;->bMi:Lcom/tencent/mm/c/a/v;

    .line 17
    new-instance v0, Lcom/tencent/mm/c/a/w;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/w;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/u;->bMj:Lcom/tencent/mm/c/a/w;

    .line 8
    const-string v0, "DeleteFavorite"

    iput-object v0, p0, Lcom/tencent/mm/c/a/u;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/u;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/u;->gbY:Z

    return-void
.end method
