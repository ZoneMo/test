.class public final Lcom/tencent/mm/c/a/cj;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bNM:Lcom/tencent/mm/c/a/ck;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/c/a/cj;->bLE:Z

    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/c/a/cj;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/ck;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ck;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/cj;->bNM:Lcom/tencent/mm/c/a/ck;

    .line 8
    const-string v0, "GameSyncNotify"

    iput-object v0, p0, Lcom/tencent/mm/c/a/cj;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/cj;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/cj;->gbY:Z

    return-void
.end method
