.class public final Lcom/tencent/mm/c/a/bz;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bND:Lcom/tencent/mm/c/a/ca;

.field public bNE:Lcom/tencent/mm/c/a/cb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/bz;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/bz;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/ca;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ca;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/bz;->bND:Lcom/tencent/mm/c/a/ca;

    .line 17
    new-instance v0, Lcom/tencent/mm/c/a/cb;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/cb;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/bz;->bNE:Lcom/tencent/mm/c/a/cb;

    .line 8
    const-string v0, "FetchStreetViewUrl"

    iput-object v0, p0, Lcom/tencent/mm/c/a/bz;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/bz;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/bz;->gbY:Z

    return-void
.end method
