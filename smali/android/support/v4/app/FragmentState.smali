.class final Landroid/support/v4/app/FragmentState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final K:I

.field final aA:Z

.field ad:Landroid/os/Bundle;

.field final ag:Landroid/os/Bundle;

.field final an:Z

.field final av:I

.field final aw:I

.field final ax:Ljava/lang/String;

.field final az:Z

.field final bK:Ljava/lang/String;

.field bL:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Landroid/support/v4/app/r;

    invoke-direct {v0}, Landroid/support/v4/app/r;-><init>()V

    sput-object v0, Landroid/support/v4/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->bK:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->K:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->an:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->av:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->aw:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->ax:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->aA:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentState;->az:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->ag:Landroid/os/Bundle;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->ad:Landroid/os/Bundle;

    .line 86
    return-void

    :cond_0
    move v0, v2

    .line 78
    goto :goto_0

    :cond_1
    move v0, v2

    .line 82
    goto :goto_1

    :cond_2
    move v1, v2

    .line 83
    goto :goto_2
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->bK:Ljava/lang/String;

    .line 65
    iget v0, p1, Landroid/support/v4/app/Fragment;->K:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->K:I

    .line 66
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->an:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->an:Z

    .line 67
    iget v0, p1, Landroid/support/v4/app/Fragment;->av:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->av:I

    .line 68
    iget v0, p1, Landroid/support/v4/app/Fragment;->aw:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->aw:I

    .line 69
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ax:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->ax:Ljava/lang/String;

    .line 70
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aA:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->aA:Z

    .line 71
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->az:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->az:Z

    .line 72
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ag:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->ag:Landroid/os/Bundle;

    .line 73
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->bL:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->bL:Landroid/support/v4/app/Fragment;

    .line 116
    :goto_0
    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->ag:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->ag:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 97
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->bK:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->ag:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->bL:Landroid/support/v4/app/Fragment;

    .line 99
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->ad:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->ad:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 101
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->bL:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->ad:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    .line 103
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->bL:Landroid/support/v4/app/Fragment;

    iget v1, p0, Landroid/support/v4/app/FragmentState;->K:I

    invoke-virtual {v0, v1, p2}, Landroid/support/v4/app/Fragment;->b(ILandroid/support/v4/app/Fragment;)V

    .line 104
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->bL:Landroid/support/v4/app/Fragment;

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentState;->an:Z

    iput-boolean v1, v0, Landroid/support/v4/app/Fragment;->an:Z

    .line 105
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->bL:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/app/Fragment;->ap:Z

    .line 106
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->bL:Landroid/support/v4/app/Fragment;

    iget v1, p0, Landroid/support/v4/app/FragmentState;->av:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->av:I

    .line 107
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->bL:Landroid/support/v4/app/Fragment;

    iget v1, p0, Landroid/support/v4/app/FragmentState;->aw:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->aw:I

    .line 108
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->bL:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->ax:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->ax:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->bL:Landroid/support/v4/app/Fragment;

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentState;->aA:Z

    iput-boolean v1, v0, Landroid/support/v4/app/Fragment;->aA:Z

    .line 110
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->bL:Landroid/support/v4/app/Fragment;

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentState;->az:Z

    iput-boolean v1, v0, Landroid/support/v4/app/Fragment;->az:Z

    .line 111
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->bL:Landroid/support/v4/app/Fragment;

    iget-object v1, p1, Landroid/support/v4/app/FragmentActivity;->aQ:Landroid/support/v4/app/m;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->ar:Landroid/support/v4/app/m;

    .line 113
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Instantiated fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->bL:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->bL:Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->bK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget v0, p0, Landroid/support/v4/app/FragmentState;->K:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->an:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Landroid/support/v4/app/FragmentState;->av:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Landroid/support/v4/app/FragmentState;->aw:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->ax:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->aA:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->az:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->ag:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 133
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->ad:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 134
    return-void

    :cond_0
    move v0, v2

    .line 126
    goto :goto_0

    :cond_1
    move v0, v2

    .line 130
    goto :goto_1

    :cond_2
    move v1, v2

    .line 131
    goto :goto_2
.end method
