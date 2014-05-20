.class public final Lcom/tencent/mm/c/a/bl;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bNm:Lcom/tencent/mm/c/a/bm;

.field public bNn:Lcom/tencent/mm/c/a/bn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/bl;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/bl;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/bm;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/bm;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/bl;->bNm:Lcom/tencent/mm/c/a/bm;

    .line 18
    new-instance v0, Lcom/tencent/mm/c/a/bn;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/bn;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/bl;->bNn:Lcom/tencent/mm/c/a/bn;

    .line 8
    const-string v0, "FMessageMobileFilter"

    iput-object v0, p0, Lcom/tencent/mm/c/a/bl;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/bl;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/bl;->gbY:Z

    return-void
.end method
