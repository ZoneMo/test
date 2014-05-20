.class public final Lcom/tencent/mm/c/a/id;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bRC:Lcom/tencent/mm/c/a/ie;

.field public bRD:Lcom/tencent/mm/c/a/if;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/id;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/id;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/ie;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ie;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/id;->bRC:Lcom/tencent/mm/c/a/ie;

    .line 18
    new-instance v0, Lcom/tencent/mm/c/a/if;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/if;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/id;->bRD:Lcom/tencent/mm/c/a/if;

    .line 8
    const-string v0, "WalletBindUIFinish"

    iput-object v0, p0, Lcom/tencent/mm/c/a/id;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/id;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/id;->gbY:Z

    return-void
.end method
