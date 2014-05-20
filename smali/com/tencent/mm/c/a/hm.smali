.class public final Lcom/tencent/mm/c/a/hm;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bRg:Lcom/tencent/mm/c/a/hn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/hm;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/hm;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/hn;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/hn;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/hm;->bRg:Lcom/tencent/mm/c/a/hn;

    .line 8
    const-string v0, "UpdateLocalSafeDevice"

    iput-object v0, p0, Lcom/tencent/mm/c/a/hm;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/hm;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/hm;->gbY:Z

    return-void
.end method
