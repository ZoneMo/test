.class final Lcom/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public JS:Ljava/lang/String;

.field public classname:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    const-string v0, ""

    iput-object v0, p0, Lcom/a/a/c;->classname:Ljava/lang/String;

    .line 466
    const-string v0, ""

    iput-object v0, p0, Lcom/a/a/c;->JS:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/a/a/c;-><init>()V

    return-void
.end method
